//
//  WordScramble.swift
//  days100
//
//  Created by HEMANTH on 28/12/22.
//

import SwiftUI
import UIKit

struct WordScramble: View {
    
    @State var usedWords = [String]()
    @State var rootWord = ""
    @State var newWord = ""
    
    @State var errorTitle = ""
    @State var errorMessage = ""
    @State var showingErro = false
    
    
    var body: some View {
        NavigationView{
            
            List{
                
                Section{
                    TextField("Enter the word", text: $newWord)
                        .autocapitalization(.words)
                }
                
                Section{
                    ForEach(usedWords,id: \.self){ word in
                        HStack{
                            Image(systemName: "circle")
                            Text(word)
                        }
                        
                    }
                }
            }
            .navigationTitle(rootWord)
            .onSubmit(addNewWord)
            .onAppear(perform:startGame)
            .alert(errorTitle, isPresented:$showingErro){
                Button("ok",role: .cancel){}
            } message: {
                Text(errorMessage)
            }
        }
    }
    
    func addNewWord(){
        
        let answer = newWord.lowercased().trimmingCharacters(in: .whitespacesAndNewlines)
        
        guard answer.count > 0  else { return}
        
        guard isOriginal(answer) else {
            wordError(title: "word already used ", message: "Be more original ")
            return
        }
        
        guard isPossible(word: answer) else {
            wordError(title: "word not possible ", message: "you cont spell the word from \(rootWord)")
            return
        }
        
        guard isReal(word: answer) else {
            wordError(title: "word not recoginised", message: "you cont just make them up , you kow ")
            return
        }
        
        withAnimation{
            usedWords.insert(newWord, at: 0)
        }
        newWord = ""
        
    }
    
    func startGame(){
        if let startWordUrl = Bundle.main.url(forResource: "start", withExtension: "txt"){
            if let startWords = try? String(contentsOf: startWordUrl){
                let allWords = startWords.components(separatedBy: "\n")
                rootWord = allWords.randomElement() ?? "Love"
                return
            }
        }
        fatalError("could not load start.txt from bundle....")
    }
    
    func isOriginal(_ word:String) -> Bool {
        return !usedWords.contains(word)
    }
    
    func isPossible(word :String)->Bool {
        
        var tempWord = rootWord
        for letter in word {
            
            if let pos = tempWord.firstIndex(of: letter){
                tempWord.remove(at: pos)
            }else {
                return false
            }
            
        }
        return true
    }
    
    
    func isReal(word:String) -> Bool {
        let checker = UITextChecker()
        let range = NSRange(location: 0, length: word.utf16.count)
        
        let misspelledRange =  checker.rangeOfMisspelledWord(in: word, range: range, startingAt: 0, wrap: false, language: "en")
        return misspelledRange.location == NSNotFound
    }
    
    func wordError (title:String,message:String){
        errorTitle = title
        errorMessage =  message
        showingErro = true
         
    }
}


struct WordScramble_Previews: PreviewProvider {
    static var previews: some View {
        WordScramble()
    }
}
