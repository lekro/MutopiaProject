\score {
  \new StaffGroupNoBar <<
    \newStaffWithLyrics << 
      \characterName \markup Mars
      \scoreInit \global 
      \basse \includeNotes "mars" 
    >> \includeLyrics "paroles"
    \newStaff << \global \basse \includeNotes "basse" >>
  >>
  \header { breakbefore = #(break-before?) }
  \layout {
    indent = \largeindent
    #(define tweak-key (*current-piece*))
  }
  \midi { \tempo 4 = 92 }
}