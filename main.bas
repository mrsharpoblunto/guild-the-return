'COMMON SHARED VARIABLES
Dim Shared ally(1 To 4) As allystat
Dim Shared weapon(1 To 6) As WeaponStat
Dim Shared state As GameState
Dim Shared settings As SettingsType

'the alphabet
Dim Shared a$, B$, c$, d$, e$, f$, g$, h$, i$, j$, k$, l$, m$, n$, o$, p$
Dim Shared q$, r$, S$, t$, u$, v$, w$, x$, y$, z$

Dim Shared VERSION$
VERSION$ = "V0.3 BETA" 'VERSION NUMBER

Open getAppDir$ + "ALPHABET.GTR" For Input As #2
Cls 0
Do While Not EOF(2)
    Input #2, a$, B$, c$, d$, e$, f$, g$, h$, i$, j$, k$, l$, m$, n$, o$, p$, q$, r$, S$, t$, u$, v$, w$, x$, y$, z$
Loop
Close #2

loadSettings settings

'opening screen settings dont change
Cls 0
Screen 12

'the beginning of the game
'the glory!!!!!!!!!!
If settings.getout = 2 Then
    Key(15) On
    KEY 15, Chr$(0) + Chr$(1)
    On Key(15) GoSub menugo

    opening

    menugo:
    tmp$ = InKey$
    sparkleclear 1
    Key(15) Off
End If

Timer On
musicstate = 0
On Timer(1) GoSub menumusic
mainmenu

menumusic:
If settings.sounds = 1 And Play(1) < 2 Then
    Select Case menustate
        Case 0
            Play "mb L7 G3 D"
        Case 1
            Play "mb L7 G- G B G"
        Case 2
            Play "mb L7 C3 < G"
        Case 3
            Play "mb L7 o3 B > C C < B > "
        Case 4
            Play "mb L7 o3 G3 D"
        Case 5
            Play "mb L7 o3 G- G B G"
        Case 6
            Play "mb L7 o3 C3 < G"
        Case 7
            Play "mb L7 o2 B > C C < B > "
        Case 8
            Play "mb L7 o3 G3 D"
        Case 9
            Play "mb L7 o3 G- G B G >"
        Case 10
            Play "mb L7 o4 C3 < G"
        Case 11
            Play "mb L7 o3 B > C C < B > "
    End Select
    menustate = menustate + 1
    If menustate > 11 Then menustate = 0
End If
Return

coordinates:
'data gathered using iMAgeData (made by me)
Data 186,69
Data 187,69
Data 188,69
Data 189,69
Data 190,69
Data 191,69
Data 192,69
Data 193,69
Data 194,69
Data 183,70
Data 184,70
Data 185,70
Data 195,70
Data 196,70
Data 197,70
Data 181,71
Data 182,71
Data 198,71
Data 199,71
Data 179,72
Data 180,72
Data 200,72
Data 201,72
Data 178,73
Data 202,73
Data 176,74
Data 177,74
Data 187,74
Data 188,74
Data 189,74
Data 190,74
Data 191,74
Data 192,74
Data 193,74
Data 203,74
Data 204,74
Data 175,75
Data 184,75
Data 185,75
Data 186,75
Data 194,75
Data 195,75
Data 196,75
Data 205,75
Data 174,76
Data 183,76
Data 197,76
Data 206,76
Data 173,77
Data 181,77
Data 182,77
Data 198,77
Data 199,77
Data 207,77
Data 173,78
Data 180,78
Data 200,78
Data 207,78
Data 172,79
Data 179,79
Data 185,79
Data 186,79
Data 187,79
Data 188,79
Data 189,79
Data 190,79
Data 191,79
Data 192,79
Data 193,79
Data 194,79
Data 195,79
Data 196,79
Data 201,79
Data 208,79
Data 171,80
Data 178,80
Data 185,80
Data 196,80
Data 202,80
Data 209,80
Data 171,81
Data 177,81
Data 185,81
Data 196,81
Data 203,81
Data 209,81
Data 171,82
Data 177,82
Data 185,82
Data 188,82
Data 189,82
Data 190,82
Data 191,82
Data 192,82
Data 193,82
Data 196,82
Data 203,82
Data 209,82
Data 170,83
Data 177,83
Data 185,83
Data 188,83
Data 193,83
Data 196,83
Data 203,83
Data 210,83
Data 170,84
Data 176,84
Data 185,84
Data 188,84
Data 193,84
Data 196,84
Data 204,84
Data 210,84
Data 170,85
Data 176,85
Data 186,85
Data 189,85
Data 190,85
Data 191,85
Data 192,85
Data 195,85
Data 204,85
Data 210,85
Data 170,86
Data 176,86
Data 187,86
Data 194,86
Data 204,86
Data 210,86
Data 170,87
Data 176,87
Data 186,87
Data 195,87
Data 204,87
Data 210,87
Data 170,88
Data 176,88
Data 185,88
Data 189,88
Data 190,88
Data 191,88
Data 192,88
Data 196,88
Data 204,88
Data 210,88
Data 170,89
Data 177,89
Data 185,89
Data 188,89
Data 193,89
Data 196,89
Data 203,89
Data 210,89
Data 171,90
Data 177,90
Data 185,90
Data 188,90
Data 193,90
Data 196,90
Data 203,90
Data 209,90
Data 171,91
Data 177,91
Data 185,91
Data 188,91
Data 189,91
Data 190,91
Data 191,91
Data 192,91
Data 193,91
Data 196,91
Data 203,91
Data 209,91
Data 171,92
Data 178,92
Data 185,92
Data 196,92
Data 202,92
Data 209,92
Data 172,93
Data 179,93
Data 185,93
Data 196,93
Data 201,93
Data 208,93
Data 173,94
Data 180,94
Data 185,94
Data 186,94
Data 187,94
Data 188,94
Data 189,94
Data 190,94
Data 191,94
Data 192,94
Data 193,94
Data 194,94
Data 195,94
Data 196,94
Data 200,94
Data 207,94
Data 173,95
Data 181,95
Data 182,95
Data 198,95
Data 199,95
Data 207,95
Data 174,96
Data 183,96
Data 197,96
Data 206,96
Data 175,97
Data 184,97
Data 185,97
Data 186,97
Data 194,97
Data 195,97
Data 196,97
Data 205,97
Data 176,98
Data 177,98
Data 187,98
Data 188,98
Data 189,98
Data 190,98
Data 191,98
Data 192,98
Data 193,98
Data 203,98
Data 204,98
Data 178,99
Data 202,99
Data 179,100
Data 180,100
Data 200,100
Data 201,100
Data 181,101
Data 182,101
Data 198,101
Data 199,101
Data 183,102
Data 184,102
Data 185,102
Data 195,102
Data 196,102
Data 197,102
Data 186,103
Data 187,103
Data 188,103
Data 189,103
Data 190,103
Data 191,103
Data 192,103
Data 193,103
Data 194,103

Sub exits
    Dim box(13800)

    'this is newly restructured to not run out of stack space
    'and to be totally independant
    '
    '
    Cls 0
    Line (1, 1)-(51, 1), 4
    Line (51, 1)-(51, 31), 4
    Line (51, 31)-(1, 31), 4
    Line (1, 31)-(1, 1), 4
    Get (1, 1)-(51, 31), box()
    Cls 0
    Locate 29, 1
    Print ; VERSION$;

    Draw "bu100 bl92"

    Draw e$
    Draw x$
    Draw i$
    Draw t$


    Draw "bl93 bd100 bl270"

    Draw a$
    Draw r$
    Draw e$

    Draw "br45"

    Draw y$
    Draw o$
    Draw u$

    Draw "br45"

    Draw S$
    Draw u$
    Draw r$
    Draw e$

    Draw "bd50 bl270 bl65"

    Draw y$

    Draw "br5 e20 r5 g20 l5 br35"

    Draw n$

    Draw "bl130"

    x = 250
    y = 265

    maxcurse = 2
    mincurse = 1
    whatcauc = 0
    mencent = 265
    cursor1 = 1
    Do
        Put (x, y), box()


        Do
            choose$ = InKey$

            Select Case choose$

                Case Chr$(0) + "K", "D", "d"
                    cursor1 = cursor1 + 1
                    If cursor1 > maxcurse Then cursor1 = mincurse
                    Put (x, y), box(), Xor

                    x = 165 + (85 * cursor1)
                    y = mencent

                    Exit Do

                Case Chr$(0) + "M", "A", "a"
                    cursor1 = cursor1 - 1
                    If cursor1 < mincurse Then cursor1 = maxcurse
                    Put (x, y), box(), Xor

                    x = 165 + (85 * cursor1)
                    y = mencent


                    Exit Do


                Case Chr$(13)


                    Select Case cursor1

                        Case 2
                            Cls 0
                            Exit Sub

                        Case 1
                            Cls 0
                            System

                    End Select

            End Select
        Loop
    Loop



End Sub

Sub mainmenu
    'this is the newly restructured menu, its far more efficient and cannot run
    'out of stack space for any reason
    ' its structured as follows

    '                            |------>main menu<-|<--------------------
    '                            |           |      |                    |
    '            ---------------------------------------------------------
    '            |               |                   |                   |
    '           \/              \/                   \/                  \/
    '        play game       load game     ------>options<----------|    exit
    '     exits this sub  exits this sub   |          /\            |   calls sub
    '            |              |          |          |             |   exit , an
    '            ----------------  --------|          |             |  independant
    '               |             \/                  \/           \/     sub
    '               |             ----------------------------------
    '              \/             |                                |
    '         gamerun sub       sound                            intro
    '                          in this                           in this
    '                           sub                               sub
    '
    '
    'this may look chaotic but in practise its
    'vastly more efficient than the old system was and it cannot run out of stack
    'space CANNOT!!!!!!! this complex network is held together by a web of
    'do loops and the variables exitloop and exitloops and the communal gosub
    'cauculate
    Dim box(13800), gefion(684)


    Do
        exitloop = 0

        Cls 0
        Line (1, 1)-(346, 1), 4
        Line (346, 1)-(346, 41), 4
        Line (346, 41)-(1, 41), 4
        Line (1, 41)-(1, 1), 4
        Get (1, 1)-(346, 41), box()
        Cls 0

        x = 150
        y = 180

        Locate 29, 1
        Print ; VERSION$;

        Draw "bl225 bu180"
        Draw "c9 u40 r80 d10 l70 d20 r60 u10 r10 d20 l80 br90 "
        Draw "c9 u40 r10 d30 r60 u30r10 d40 l80 br90"
        Draw "c9 u10 r34 u20 l34 u10 r80 d10 l36 d20 r36 d10 l80 br90"
        Draw "c9 u40 r10 d30 r70 d10 l80 br90"
        Draw "c9 u40 r70 f10 d20 g10 l70 be10 r60 u20 l60 d20 bd10 br80"

        Draw "bl450 bd50 "

        Draw t$
        Draw h$
        Draw e$

        Draw "br45"

        Draw r$
        Draw e$
        Draw t$
        Draw u$
        Draw r$
        Draw n$

        Draw "bl225 bd100 bl90"

        Draw p$
        Draw l$
        Draw a$
        Draw y$

        Draw "bl90 bd50 bl90"

        Draw l$
        Draw o$
        Draw a$
        Draw d$

        Draw "bd50 bl90 bl157 "

        Draw o$
        Draw p$
        Draw t$
        Draw i$
        Draw o$
        Draw n$
        Draw S$

        Draw "bl158 bd50 bl90 "


        Draw e$
        Draw x$
        Draw i$
        Draw t$

        Draw "bl90"
        cursor = 2
        maxcurse = 5
        mincurse = 2
        whatcauc = 0
        mencent = 150
        Do
            GoSub cauculate

            Select Case cursor

                Case 2
                    Timer Off
                    state.GAMEPLACE = 0
                    runGame
                    Timer On
                    exitloop = 1

                Case 3
                    Do
                        exitloop = 0
                        exitloops = 0
                        Cls 0
                        Locate 29, 1
                        Print ; VERSION$;

                        Draw "bu180 bl90"
                        Draw l$
                        Draw o$
                        Draw a$
                        Draw d$
                        Draw "bd100 bl90"
                        Draw " BD50 BL90"
                        Draw B$
                        Draw a$
                        Draw c$
                        Draw k$
                        Draw "bl90"

                        hasSave = loadState(state, ally(), weapon())

                        Locate 10, 27
                        If hasSave = 0 Then
                            Print "NO SAVED GAME"
                        Else
                            Select Case state.GAMEPLACE
                                Case 1
                                    Print "RENOBU HQ"

                                Case 2
                                    Print "BAYHARE ISLAND"

                            End Select
                        End If
                        Line (199, 143)-(441, 159), 9, B

                        x = 160
                        y = 130

                        cursor = 1
                        mincurse = 1
                        maxcurse = 2
                        whatcauc = 0
                        mencent = 160
                        Do
                            GoSub cauculate

                            Select Case cursor

                                Case 1
                                    If hasSave = 0 Then
                                        If settings.sounds = 1 Then Play "mb l60<<c>>"
                                    Else
                                        Timer Off
                                        runGame
                                        Timer On
                                        exitloop = 1
                                    End If

                                Case 2
                                    exitloop = 1
                                    exitloops = 1

                            End Select
                        Loop Until exitloop = 1
                    Loop Until exitloops = 1
                Case 4
                    Do
                        exitloops = 0
                        Cls 0
                        Line (1, 1)-(346, 1), 4
                        Line (346, 1)-(346, 41), 4
                        Line (346, 41)-(1, 41), 4
                        Line (1, 41)-(1, 1), 4
                        Get (1, 1)-(346, 41), box()
                        Cls 0
                        Locate 29, 1
                        Print ; VERSION$;

                        Draw "bu 180 bl157"

                        Draw o$
                        Draw p$
                        Draw t$
                        Draw i$
                        Draw o$
                        Draw n$
                        Draw S$

                        Draw "bl158 bd100 bl112"

                        Draw S$
                        Draw o$
                        Draw u$
                        Draw n$
                        Draw d$

                        Draw "bl113 bd50 bl112"

                        Draw i$
                        Draw n$
                        Draw t$
                        Draw r$
                        Draw o$

                        Draw "BD50 BL113 BL90"

                        Draw B$
                        Draw a$
                        Draw c$
                        Draw k$

                        Draw "bl90"

                        x = 160
                        y = 130
                        maxcurse = 3
                        mincurse = 1
                        whatcauc = 0
                        mencent = 160
                        cursor = 1
                        Do
                            GoSub cauculate

                            Select Case cursor

                                Case 1
                                    saveSettings settings
                                    Cls 0
                                    Line (1, 1)-(39, 1), 4
                                    Line (39, 1)-(39, 19), 4
                                    Line (39, 19)-(1, 19), 4
                                    Line (1, 19)-(1, 1), 4
                                    Paint (11, 11), 4
                                    Get (1, 1)-(39, 19), gefion()
                                    Cls 0
                                    Line (1, 1)-(246, 1), 4
                                    Line (246, 1)-(246, 41), 4
                                    Line (245, 41)-(1, 41), 4
                                    Line (1, 41)-(1, 1), 4
                                    Get (1, 1)-(246, 41), box()
                                    Cls 0
                                    Locate 29, 1
                                    Print ; VERSION$;

                                    Draw "bu180 bl112"

                                    Draw S$
                                    Draw o$
                                    Draw u$
                                    Draw n$
                                    Draw d$

                                    Draw "bd100 bl113"


                                    Draw "bl132"

                                    Draw g$
                                    Draw o$
                                    Draw o$
                                    Draw d$
                                    Draw "BR45"
                                    Draw "U20 R40 D20 L40"

                                    Draw "bl133 bd50 BL92 "

                                    Draw B$
                                    Draw a$
                                    Draw d$
                                    Draw "BR45"
                                    Draw "BR45"
                                    Draw "U20 R40 D20 L40"


                                    Draw "BL132 bd50 bl93"

                                    Draw o$
                                    Draw f$
                                    Draw f$
                                    Draw "BR45"
                                    Draw "BR45"
                                    Draw "U20 R40 D20 L40"


                                    Draw "bL92 bd50 bl133"

                                    Draw B$
                                    Draw a$
                                    Draw c$
                                    Draw k$

                                    Draw "bl90"

                                    cursor = 1
                                    x = 160
                                    y = 130
                                    maxcurse = 4
                                    mincurse = 1
                                    whatcauc = 1
                                    mencent = 160
                                    Do
                                        GoSub cauculate
                                        If cursor = 1 Then settings.sounds = 1
                                        If cursor = 2 Then settings.sounds = 2
                                        If cursor = 3 Then settings.sounds = 3
                                        If cursor = 4 Then
                                            saveSettings settings
                                            exitloops = 1
                                        End If

                                    Loop Until exitloops = 1

                                Case 2
                                    saveSettings settings

                                    Cls 0
                                    Line (1, 1)-(39, 1), 4
                                    Line (39, 1)-(39, 19), 4
                                    Line (39, 19)-(1, 19), 4
                                    Line (1, 19)-(1, 1), 4
                                    Paint (10, 10), 4
                                    Get (1, 1)-(39, 19), gefion()
                                    Cls 0
                                    Line (1, 1)-(246, 1), 4
                                    Line (246, 1)-(246, 41), 4
                                    Line (246, 41)-(1, 41), 4
                                    Line (1, 41)-(1, 1), 4
                                    Get (1, 1)-(246, 41), box()
                                    Cls 0

                                    cursor = 1
                                    x = 160
                                    y = 130
                                    Locate 29, 1
                                    Print ; VERSION$;

                                    Draw "bu180 bl112"
                                    Draw i$
                                    Draw n$
                                    Draw t$
                                    Draw r$
                                    Draw o$


                                    Draw "bd100 bl113 bl132"

                                    Draw o$
                                    Draw n$
                                    Draw "br45"
                                    Draw "br45"
                                    Draw "BR45"
                                    Draw "U20 R40 D20 L40"

                                    Draw "bd50 bl93 bl132 "

                                    Draw o$
                                    Draw f$
                                    Draw f$
                                    Draw "BR45"
                                    Draw "BR45"
                                    Draw "U20 R40 D20 L40"

                                    Draw "bd50 bl132 bl93"

                                    Draw B$
                                    Draw a$
                                    Draw c$
                                    Draw k$

                                    Draw "bl93 BL130 bd50"
                                    mencent = 160
                                    mincurse = 1
                                    maxcurse = 3
                                    whatcauc = 2
                                    Do
                                        GoSub cauculate

                                        If cursor = 1 Then settings.getout = 2
                                        If cursor = 2 Then settings.getout = 1
                                        If cursor = 3 Then
                                            saveSettings settings
                                            exitloops = 1
                                        End If

                                    Loop Until exitloops = 1

                                Case 3
                                    exitloop = 1
                                    exitloops = 1
                            End Select
                        Loop Until exitloops = 1
                    Loop Until exitloop = 1

                Case 5
                    Call exits
                    exitloop = 1


            End Select
        Loop Until exitloop = 1
    Loop

    'this is the sub that does all the work, before I had 6 peices
    'of code like this, in 6 different subs now this does the job of all of
    'them saving time and space

    cauculate:

    Do
        Select Case whatcauc

            Case 0
                'nothing

            Case 1
                If settings.sounds = 1 Then Put (414, 141), gefion()
                If settings.sounds = 2 Then Put (414, 191), gefion()
                If settings.sounds = 3 Then Put (414, 241), gefion()

            Case 2
                If settings.getout = 2 Then Put (414, 141), gefion()
                If settings.getout = 1 Then Put (414, 191), gefion()

        End Select

        Put (x, y), box()


        Do
            choose$ = InKey$

            Select Case choose$

                Case Chr$(0) + "H", "w", "W"
                    cursor = cursor - 1
                    If cursor < mincurse Then cursor = maxcurse
                    Put (x, y), box(), Xor

                    x = mencent
                    y = 80 + (50 * cursor)

                    Select Case whatcauc

                        Case 0
                            'nothing

                        Case 1
                            If settings.sounds = 1 Then Put (414, 141), gefion()
                            If settings.sounds = 2 Then Put (414, 191), gefion()
                            If settings.sounds = 3 Then Put (414, 241), gefion()


                        Case 2
                            If settings.getout = 2 Then Put (414, 141), gefion()
                            If settings.getout = 1 Then Put (414, 191), gefion()

                    End Select

                    Exit Do


                Case Chr$(0) + "P", "s", "S"
                    cursor = cursor + 1
                    If cursor > maxcurse Then cursor = mincurse
                    Put (x, y), box(), Xor

                    x = mencent
                    y = 80 + (50 * cursor)

                    Select Case whatcauc

                        Case 0
                            'nothing

                        Case 1
                            If settings.sounds = 1 Then Put (414, 141), gefion()
                            If settings.sounds = 2 Then Put (414, 191), gefion()
                            If settings.sounds = 3 Then Put (414, 241), gefion()


                        Case 2
                            If settings.getout = 2 Then Put (414, 141), gefion()
                            If settings.getout = 1 Then Put (414, 191), gefion()

                    End Select

                    Exit Do


                Case Chr$(13)
                    Put (x, y), box(), Xor
                    Select Case whatcauc

                        Case 0
                            'nothing

                        Case 1
                            If settings.sounds = 1 Then Put (414, 141), gefion(), Xor
                            If settings.sounds = 2 Then Put (414, 191), gefion(), Xor
                            If settings.sounds = 3 Then Put (414, 241), gefion(), Xor


                        Case 2
                            If settings.getout = 2 Then Put (414, 141), gefion(), Xor
                            If settings.getout = 1 Then Put (414, 191), gefion(), Xor

                    End Select

                    Return

            End Select
        Loop
    Loop

End Sub

Function igmenu
    'welcome to the newly completed in game menu, its totally independant and
    'uses a simaler structure to the main menu I'll show in the following diagram
    '
    '
    '
    '  -------------------->wherever you are in the game
    '  |                                |
    '  |                               \/
    '  |                            in game menu <--------------------------------
    '  |                                |                                        |
    '  |                               \/                                        |
    '  |          -----------------------------------------------                |
    '  |          |                     |                       |                |
    '  |          \/                  main                     \/                |
    '  |         return                 |      ------------->inventory           |
    '  ------------|                  menu1    |                |                |
    '                                          --------------------------------  |
    '                                          |                |             |  |
    '                                        weapon           items         back-|
    '                                stays in this sub   in this sub
    '
    '
    '
    '
    'THIS CANNOT RUN OUT OF STACK SPACE FOR ANY REASON!!!!!!!!
    Dim box%(1 To 4700)
    igmenu = 1
    Do
        exitloop = 0
        Width 80, 30
        View Print 1 To 30
        Cls 0

        Line (10, 10)-(455, 10), 4
        Line (455, 10)-(455, 50), 4
        Line (455, 50)-(10, 50), 4
        Line (10, 50)-(10, 10), 4
        Get (10, 10)-(455, 50), box%()
        Cls 0
        Draw "bl225 bu180"
        Draw "c9 u40 r80 d10 l70 d20 r60 u10 r10 d20 l80 br90 "
        Draw "c9 u40 r10 d30 r60 u30r10 d40 l80 br90"
        Draw "c9 u10 r34 u20 l34 u10 r80 d10 l36 d20 r36 d10 l80 br90"
        Draw "c9 u40 r10 d30 r70 d10 l80 br90"
        Draw "c9 u40 r70 f10 d20 g10 l70 be10 r60 u20 l60 d20 bd10 br80"

        Locate 29, 1
        Print ; VERSION$;

        Draw "bl450 bd50 "

        Draw t$
        Draw h$
        Draw e$

        Draw "br45"

        Draw r$
        Draw e$
        Draw t$
        Draw u$
        Draw r$
        Draw n$

        Draw "bl225 bd100 bl135"

        Draw r$
        Draw e$
        Draw t$
        Draw u$
        Draw r$
        Draw n$

        Draw "bd50 bl135 bl203 "

        Draw i$
        Draw n$
        Draw v$
        Draw e$
        Draw n$
        Draw t$
        Draw o$
        Draw r$
        Draw y$

        Draw "bl202 bd50 bl90 "


        Draw m$
        Draw a$
        Draw i$
        Draw n$

        Draw "bl90"

        x% = 100
        Y% = 180
        mencent = 100
        cursor1 = 2
        maxcurse = 4
        mincurse = 2

        Do
            GoSub cauculate2

            Select Case cursor1


                Case 2
                    igmenu = 1
                    Exit Function

                Case 3
                    Do
                        Cls 0

                        Line (10, 10)-(290, 10), 4
                        Line (290, 10)-(290, 50), 4
                        Line (290, 50)-(10, 50), 4
                        Line (10, 50)-(10, 10), 4
                        Get (10, 10)-(290, 50), box%()
                        Cls 0
                        Locate 29, 1
                        Print ; VERSION$;

                        Draw "bu180 bl202"
                        Draw i$
                        Draw n$
                        Draw v$
                        Draw e$
                        Draw n$
                        Draw t$
                        Draw o$
                        Draw r$
                        Draw y$
                        Draw "bd50 BL196 bl319"
                        Draw S$
                        Draw t$
                        Draw a$
                        Draw t$
                        Draw S$
                        Locate 7, 39
                        Print "HEALTH"
                        Locate 7, 48
                        Print ally(1).h
                        Locate 7, 56
                        Print "POWER"
                        Locate 7, 64
                        Print ally(1).p
                        Draw "BR65 U20 R70 D20 L70 U20 R120 D20 L120 BR128 U20 R70 D20 L70 U20 R120 D20 L120"
                        Draw "BD50 BL418"
                        Draw c$
                        Draw a$
                        Draw S$
                        Draw h$
                        Locate 10, 38
                        Print state.cash

                        Draw "c9 br110 u20 r50 d20 l50"
                        Draw "bd50 bl290"

                        Draw w$
                        Draw e$
                        Draw a$
                        Draw p$
                        Draw o$
                        Draw n$

                        Locate 13, 39
                        Print weapon(state.currentWeapon).NAME
                        Locate 13, 60
                        Print weapon(state.currentWeapon).attackp
                        Locate 13, 67
                        Print weapon(state.currentWeapon).range
                        Locate 13, 74
                        Print weapon(state.currentWeapon).acc

                        Locate 12, 61
                        Print "AP"
                        Locate 12, 68
                        Print "R"
                        Locate 12, 75
                        Print "AC"

                        Draw "c9 br20 u20 r158 d20 l158 BR166 U20 R48 D20 L48 U40 R48 D40 L48 BR56 U20 R48 D20 L48 U40 R48 D40 L48  BR56 U20 R40 D20 L40 U40 R40 D40 L40"
                        Draw "bl564 bd50"
                        Draw i$
                        Draw t$
                        Draw e$
                        Draw m$
                        Draw S$
                        Draw "bl225 bd50"
                        Draw a$
                        Draw l$
                        Draw l$
                        Draw i$
                        Draw e$
                        Draw S$
                        Draw "bd50 bl270"
                        Draw B$
                        Draw a$
                        Draw c$
                        Draw k$
                        Draw "bl180"


                        cursor1 = 2
                        x% = 1
                        Y% = 180
                        mencent = 1
                        mincurse = 2
                        maxcurse = 5
                        Do
                            GoSub cauculate2
                            Select Case cursor1

                                Case 2
                                    state.currentWeapon = state.currentWeapon + 1
                                    If state.currentWeapon > state.maxWeapons Then state.currentWeapon = 1

                                    ally(1).WEAPON = weapon(state.currentWeapon).NAME
                                    ally(1).attackp = weapon(state.currentWeapon).attackp
                                    ally(1).range = weapon(state.currentWeapon).range
                                    ally(1).acc = weapon(state.currentWeapon).acc

                                    Locate 13, 39
                                    Print weapon(state.currentWeapon).NAME
                                    Locate 13, 60
                                    Print weapon(state.currentWeapon).attackp
                                    Locate 13, 67
                                    Print weapon(state.currentWeapon).range
                                    Locate 13, 74
                                    Print weapon(state.currentWeapon).acc

                                Case 3
                                    Cls 0
                                    Locate 29, 1
                                    Print ; VERSION$;

                                    Draw "bu180 bl112"
                                    Draw i$
                                    Draw t$
                                    Draw e$
                                    Draw m$
                                    Draw S$
                                    Draw "bd350 bl113 bl90"
                                    Draw B$
                                    Draw a$
                                    Draw c$
                                    Draw k$
                                    Draw "c4 bl190 bd5 u30 r200 d30 l200  "
                                    'fill this space with items

                                    Do
                                    Loop While InKey$ = ""
                                    If settings.sounds = 1 Then Play "l60 mb <<c>>"
                                    Cls 0
                                    Exit Do

                                Case 4
                                    Cls 0


                                    Draw "bu180 bl135"
                                    Draw a$
                                    Draw l$
                                    Draw l$
                                    Draw i$
                                    Draw e$
                                    Draw S$
                                    Draw " bd100 bl135 bl296"
                                    i = 1
                                    Do
                                        Locate (i * 4) + 5, 17
                                        Print "POWER"
                                        Locate (i * 4) + 5, 24
                                        Print "HEALTH"
                                        Locate (i * 4) + 5, 32
                                        Print "WEAPON"
                                        Locate (i * 4) + 5, 52
                                        Print "AP"
                                        Locate (i * 4) + 5, 56
                                        Print "A"
                                        Locate (i * 4) + 5, 60
                                        Print "R"
                                        If ally(i).exist Then
                                            Locate (i * 4) + 6, 4
                                            Print ally(i).NAMES
                                            Locate (i * 4) + 6, 17
                                            Print ally(i).p
                                            Locate (i * 4) + 6, 24
                                            Print ally(i).h
                                            Locate (i * 4) + 6, 32
                                            Print ally(i).WEAPON
                                            Locate (i * 4) + 6, 51
                                            Print ally(i).attackp
                                            Locate (i * 4) + 6, 55
                                            Print ally(i).acc
                                            Locate (i * 4) + 6, 59
                                            Print ally(i).range
                                        End If
                                        Draw "c9 r472 u16 L472 d16 Bu32 BR96 r376 d16 u16 Bl472 Br96 d32 u32 r56 d32 u32 r64 d32 u32 R160 D32 U32 r32 d32 u32 r32 d32 u32 r32 Bl472 Bd32 bd64"

                                        i = i + 1
                                    Loop Until i > 4

                                    Draw "br296 bl90"
                                    Draw B$
                                    Draw a$
                                    Draw c$
                                    Draw k$
                                    Draw "C4 bl190 bd10 u40 r200 d40 l200"
                                    Do: Loop While InKey$ = ""

                                    Cls 0
                                    Exit Do

                                Case 5
                                    exitloops = 1
                                    exitloop = 1
                                    Exit Do

                            End Select
                        Loop


                    Loop Until exitloops = 1

                Case 4
                    igmenu = 0
                    Exit Function

            End Select

        Loop Until exitloop = 1
    Loop

    cauculate2:
    Do
        igex = 0
        Put (x%, Y%), box%()

        Do
            choose$ = InKey$

            Select Case choose$

                Case Chr$(0) + "H", "w", "W"
                    cursor1 = cursor1 - 1
                    If cursor1 < mincurse Then cursor1 = maxcurse
                    Put (x%, Y%), box%(), Xor
                    If settings.sounds = 1 Then Play "l60 mb <<c>>"

                    x% = mencent
                    Y% = 80 + (cursor1 * 50)

                    Exit Do

                Case Chr$(0) + "P", "s", "S"
                    cursor1 = cursor1 + 1
                    If cursor1 > maxcurse Then cursor1 = mincurse
                    Put (x%, Y%), box%(), Xor
                    If settings.sounds = 1 Then Play "l60 mb <<c>>"

                    x% = mencent
                    Y% = 80 + (50 * cursor1)

                    Exit Do

                Case Chr$(13)
                    Put (x%, Y%), box%(), Xor
                    If settings.sounds = 1 Then Play "l60 mb <<c>>"
                    Return

            End Select
        Loop

    Loop
End Function

Sub runGame
    levelResult = 0
    Do
        Select Case state.GAMEPLACE
            Case 0:
                levelResult = level0
            Case 1:
                levelResult = level1
            Case 2:
                levelResult = level2
            Case Else:
                levelResult = 0
        End Select
        If levelResult = 1 Then
            state.GAMEPLACE = state.GAMEPLACE + 1
            saveState state, ally(), weapon()
        End If
    Loop Until levelResult = 0
End Sub

Function level0
    ally(1).NAMES = "Gefion"
    ally(1).exist = 1
    ally(1).acc = 9
    ally(1).attackp = 30
    ally(1).range = 10
    ally(1).p = 50
    ally(1).mp = 50
    ally(1).h = 100
    ally(1).mh = 100
    ally(1).WEAPON = "Broadsword"
    ally(1).death = 0
    ally(1).price = 100
    ally(1).upg = 15
    ally(2).exist = 0
    ally(3).exist = 0
    ally(4).exist = 0

    weapon(1).NAME = "Broadsword"
    weapon(1).acc = 9
    weapon(1).attackp = 30
    weapon(1).range = 10

    state.maxWeapons = 1
    state.currentWeapon = 1
    state.cash = 100
    state.adrenaline = 1
    state.rhq73i = 1
    state.rhq73s = 1

    View Print 7 To 30
    Cls 0
    Draw "bu180 bl157"
    Draw n$
    Draw a$
    Draw d$
    Draw i$
    Draw "br45"
    Draw h$
    Draw q$
    Print
    Print "HIGH COUNCIL CHAMBER 0900 HOURS"
    Print
    Print "ADMIRAL RIKARI: We can't just stand by and take this from these rebels. We can't"
    Print "just let them get away with  attacking our  border patrols, I  say swift  action"
    Print "must be taken. "
    Do
    Loop While InKey$ = ""
    Print
    Print "GENERAL RHANE: But Rikari how can you say that, because we don't know  who  is"
    Print "responsible for this. I mean its just not the rebels style to  directly attack"
    Print "border patrols and even if it was them what would they gain from it?"
    Do
    Loop While InKey$ = ""
    Print
    Print "PRIME MINISTER YUGIN: I agree with Mr Rhane on the matter. I think it would not"
    Print "be in our best interests to commit troops to an enemy  that we don't  have  any"
    Print "proof of who they are or what they want."
    Do
    Loop While InKey$ = ""
    Print
    Print "FLEET COMMANDER INDRIS: Yes, I don't think another unfounded rebel bashing would"
    Print "go well with the  public. Before we  can  decide  on  more  substantial  action,"
    Print "evidence must be gathered. "
    Do
    Loop While InKey$ = ""
    Print
    Print "ADMIRAL RIKARI: Listen to what you are saying! The rebels goal is obviously to"
    Print "create political instability and to divide NADI, and look, they're succeeding!"
    Print "We must deliver the fatal blow to them now and not let them undermine us while "
    Print "we still have the power to stop them."
    Do
    Loop While InKey$ = ""
    Print
    Print "PRIME MINISTER YUGIN: Mr Rikari, the council has spoken. I..... "
    Do
    Loop While InKey$ = ""
    Print
    Print "ADMIRAL RIKARI: You cannot afford to make this mistake, we must act quickly!"
    Do
    Loop While InKey$ = ""
    Print
    Print "PRIME MINISTER YUGIN: How dare you interrupt  me  and  question  the  council!"
    Print "You may be the head of the  military  and  the  issues  which  go  with  that, "
    Print "but this is not a military issue, it is  one  of  intelligence  until  we  can"
    Print "find the group responsible. You may leave now, Mr Rikari."
    Do
    Loop While InKey$ = ""
    Print
    Print "ADMIRAL RIKARI:You will all regret this."
    Do
    Loop While InKey$ = ""
    Select Case settings.sounds

        Case 1
            Play "mb L16 O1 C P8 <  F# P8 F2"
            Play "P2"

        Case 2
            Play " L16 O1 C P8 <  F# P8 F2"
            Play "P2"

        Case 3
            '

    End Select


    Print
    Print "PRIME MINISTER YUGIN: HOW DARE YOU THREATEN US, GET OUT WHILE YOU STILL HAVE"
    Print "YOUR JOB!!!"
    Select Case settings.sounds

        Case 1
            Play "mb L64 N65 N66 N67 N68 N69 N70 N71 N72 N73 N74 N75 N76 N77 N78 N79 N80"

        Case 2
            Play " L64 N65 N66 N67 N68 N69 N70 N71 N72 N73 N74 N75 N76 N77 N78 N79 N80"


        Case 3
            '

    End Select
    Do
    Loop While InKey$ = ""

    Print
    Print "PRIME MINISTER YUGIN: I am handing this over to the intelligence department."
    Print "That's you Mr Tristen, and I expect a result as quickly as possible."
    Do
    Loop While InKey$ = ""
    Print
    Print "MINISTER TRISTEN:Yes Sir."
    Do
    Loop While InKey$ = ""
    Print
    Print "PRIME MINISTER YUGIN: This meeting is adjourned."
    Do
    Loop While InKey$ = ""

    Select Case settings.sounds

        Case 1
            Play "mb O1 L16 C P6 C C C C P6 C C C C P6 C C C C P6 C#5"

        Case 2
            Play " O1 L16 C P6 C C C C P6 C C C C P6 C C C C P6 C#5"

        Case 3
            '

    End Select

    Cls 0

    View Print 10 To 30
    Draw "bu180 bl157"
    Draw n$
    Draw a$
    Draw d$
    Draw g$
    Draw i$
    Draw e$
    Draw r$
    Draw "BD50 BL158 BL292 "
    Draw m$
    Draw i$
    Draw l$
    Draw i$
    Draw t$
    Draw a$
    Draw r$
    Draw y$
    Draw "br45"
    Draw B$
    Draw a$
    Draw S$
    Draw e$
    Print
    Print "TARGET RANGE 1600 HOURS TWO WEEKS LATER"
    Print
    Print
    Print "GEFION FREELANDER: Well Kay'l, that's 20 out of 20 bullseyes."
    Do
    Loop While InKey$ = ""
    Print
    Print "KAY'L SHOJUN: Yeah whatever..."
    Do
    Loop While InKey$ = ""
    Print
    Print "GEFION: Don't you remember our deal?"
    Do
    Loop While InKey$ = ""
    Print
    Print "KAY'L: Here's your money."
    Do
    Loop While InKey$ = ""
    Print
    Print "GEFION: Sweeeet."
    Do
    Loop While InKey$ = ""
    Print
    Print "OVERHEAD SPEAKER: Lieutennants Shojun and Freelander please report to colonel"
    Print "Aldensens office ASAP."
    Do
    Loop While InKey$ = ""

    Print
    Print "KAY'L & GEFION: (gulp)"
    Do
    Loop While InKey$ = ""

    Cls 2
    Print "COLONEL ALDESENS OFFICE 20 MINUTES LATER"
    Print
    Print
    Print "GEFION & KAY'L: Reporting for duty SIR!"

    Select Case settings.sounds

        Case 1
            Play "mb O1 L16 C#5 C"

        Case 2
            Play " O1 L16 C#5 C"

        Case 3
            '
    End Select

    Do
    Loop While InKey$ = ""
    Print
    Print "COLONEL ALDESEN: I'll get straight to the point, I've been running out of"
    Print "options with you two. You're two of the best this base has seen in a long"
    Print "time and frankly, you're wasted here. So I'm offering you a transfer to "
    Print "Renobu-6 in Tienke. I know it's big, but still. Think it over  and report"
    Print "back here at 1200 tomorrow with you're descisions."

    Do
    Loop While InKey$ = ""
    Print
    Print "GEFION & KAY'L: Yes SIR!"
    Do
    Loop While InKey$ = ""

    Cls 2
    Select Case settings.sounds

        Case 1
            Play "mb O3 L6 C F# A > C2"

        Case 2
            Play " O3 L6 C F# A > C2"

        Case 3
            '

    End Select


    Print
    Print "DORM ROOM 7: "
    Print
    Print "GEFION: So what do you think of his offer?"
    Do
    Loop While InKey$ = ""
    Print
    Print "KAY'L: Well, it has always been a dream of mine to be in Renobu - but  Tienke,"
    Print "the big smoke. Going there will mean I have to leave this all behind. Family,"
    Print "friends, and the place where I grew up. "
    Do
    Loop While InKey$ = ""
    Print
    Print "GEFION: I don't know about you, but that is just what I need. To get out of "
    Print "this hole, to go places, meet new people. Man, once I see Tienke's neon  glow "
    Print "I'll never want to go back. A dream job in the big city. How can you turn that "
    Print "down?"
    Do
    Loop While InKey$ = ""
    Print
    Print "KAY'L: Okay. Lets go for it."
    Do
    Loop While InKey$ = ""

    Select Case settings.sounds

        Case 1
            Play "mb O3 g12 g12 a#12 g6 > d6 c6 f6 g12 g12"

        Case 2
            Play " O3 g12 g12 a#12 g6 > d6 c6 f6 g12 g12"

        Case 3
            '
            Cls 2
    End Select
    Cls 0

    View Print 6 To 30
    Draw " bu180 bl135"
    Draw t$
    Draw i$
    Draw e$
    Draw n$
    Draw k$
    Draw e$
    Draw "bl135"
    Print "TWO DAYS LATER "
    Print
    Print "from the port side window of the VTOL transport your vision is obscured by"
    Print "a kilometer high bank of fog that hovers above tienke's industrial center."
    Print "The only sounds are the dull rumble of the four FUSION jets that speed the"
    Print "craft along just under mach 2 and the soft pitter patter of Tienkes midly"
    Print "corrosive acid rain. You've been in the craft since about 5 am this Morning"
    Print "when you boarded it at Nadgier military base and began a direct flight to"
    Print "Renobu-6 headquarters."
    Do
    Loop While InKey$ = ""
    Cls 2
    Print
    Print "10 MINUTES LATER"
    Print
    Print
    Print "for a brief moment the fog clears giving you a widow of vision downward to"
    Print "tienkes streets down below you see what looks like a landing pad , abruptly"
    Print "the aircraft slows just slowly enough to prevent you from falling out of your"
    Print "seat. As the aircraft slows you detect a raising pitch in the engines sound as"
    Print "they change into hover mode, each delivering the 25 000 pounds of vertical"
    Print "thrust required to allow it to hover just under 500 feet from ground zero."
    Do
    Loop While InKey$ = ""
    Print
    Print "Slowly you begin to edge downward and  every few seconds you hear the sharp"
    Print "hissing  'fizz' of the auto stabilizing retro rockets keeping the 175 ton"
    Print "craft steady in the strong winds. After about a minute you hear the landing"
    Print "gear fold down and the engine pitch raises to a roar as the craft hovers a"
    Print "few centimeters above the tarmac before finally coming to ground with a soft"
    Print "'thud'"
    Do
    Loop While InKey$ = ""
    Print
    Print "After a few seconds the starbord side door opens and the 18  passengers,"
    Print "most of them intelligence spooks except for you and Kay'l file out slowly. "
    Do
    Loop While InKey$ = ""
    Print
    Print "as you exit the craft  you look up and see huge glass doors closing overhead"
    Print "shutting the hole in the roof and enclosing the craft inside a large hanger"
    Print "area as the doors close with a resounding clang! You walk across the wet"
    Print "concrete towards a small doorway  with a soldier in NADI uniform standing"
    Print "next to it."
    Do
    Loop While InKey$ = ""
    Cls 0

    Draw "bu180 bl 202"
    Draw r$
    Draw e$
    Draw n$
    Draw o$
    Draw B$
    Draw u$
    Draw "br45"
    Draw h$
    Draw q$
    Draw "bl203 bd50 bl202"
    Draw e$
    Draw a$
    Draw S$
    Draw t$
    Draw "br45"
    Draw w$
    Draw i$
    Draw n$
    Draw g$
    Draw "bl203"
    View Print 10 To 30


    Print "CORPORAL NAGASHI:Welcome to renobu LT's Freelander and Shojun please choose"
    Print "a weapon from the lab or go into battle training for a simulation shootout"
    Print "And when you feel like it go to your rooms I think you're in dorm 6. Feel "
    Print "free to enter any of the rooms and note if you don't visit the lab you will"
    Print "have the default weapon though I dont blame you, DR MORGAN is a bit of an"
    Print "eccentric. "
    Do
    Loop While InKey$ = ""
    Print
    Print "GEFION:Thanks I'll keep that in mind"
    Do
    Loop While InKey$ = ""
    Select Case settings.sounds

        Case 1
            Play "MF O3 L6 C F G A#3"

        Case 2
            Play "MF O3 L6 C F G A#3"

        Case 3
            'I can siiiiiiiiiiiiiiiiinnnnnnnng but you cant hear meeeeeeeeeeeeeeeeee!!!

    End Select
    level0 = 1
End Function

Sub opening
    introB
    sparkleclear 15

    Cls 0
    Draw "bl177"
    Draw p$
    Draw r$
    Draw e$
    Draw S$
    Draw e$
    Draw n$
    Draw t$
    Draw S$

    Sleep 2
    sparkleclear 1

    Cls 0
    Draw "bu100 bl267"
    Draw a$
    Draw "br45"
    Draw l$
    Draw u$
    Draw k$
    Draw e$
    Draw "br45"
    Draw S$
    Draw m$
    Draw i$
    Draw t$
    Draw h$
    Draw "bl267 bd50"
    Draw "bl65"
    Draw a$
    Draw n$
    Draw d$
    Draw "bd50 bl65"
    Draw "bl267"
    Draw g$
    Draw l$
    Draw e$
    Draw n$
    Draw n$
    Draw "br45"
    Draw c$
    Draw o$
    Draw n$
    Draw n$
    Draw e$
    Draw r$
    Draw "bd50 bl267"
    Draw "bl222"
    Draw p$
    Draw r$
    Draw o$
    Draw d$
    Draw u$
    Draw c$
    Draw t$
    Draw i$
    Draw o$
    Draw n$

    Sleep 3
    sparkleclear 1

    Cls 0
    Draw "bl177"
    Draw S$
    Draw t$
    Draw a$
    Draw r$
    Draw r$
    Draw i$
    Draw n$
    Draw g$

    Sleep 2
    sparkleclear 1

    Cls 0
    Draw "bl132"
    Draw g$
    Draw e$
    Draw f$
    Draw i$
    Draw o$
    Draw n$
    Draw "bd50 bl132"
    Draw "bl222"
    Draw f$
    Draw r$
    Draw e$
    Draw e$
    Draw l$
    Draw a$
    Draw n$
    Draw d$
    Draw e$
    Draw r$

    Sleep 2
    sparkleclear 1

    Cls 0
    Draw "bl177"
    Draw k$
    Draw a$
    Draw t$
    Draw h$
    Draw e$
    Draw r$
    Draw y$
    Draw n$
    Draw "bd50 bl177 bl112"
    Draw a$
    Draw k$
    Draw u$
    Draw r$
    Draw a$

    Sleep 2
    sparkleclear 1

    Cls 0
    Draw "BL102"
    Draw k$
    Draw a$
    Draw y$
    Draw dash$
    Draw l$
    Draw "BL103 BL135 BD50"
    Draw S$
    Draw h$
    Draw o$
    Draw j$
    Draw u$
    Draw n$

    Sleep 2
End Sub

Sub introA ()
    size = 1
    playin = 100

    A1$ = "C15 e20 f20 l5 h15 g15 l5 br45"
    C1$ = "C15 u20 r40 d5 l35 d10 r35 d5 l40 br45"
    E1$ = "C15 u20 r40 d5 l35 d3 r35 d4 l35 d3 r35 d5 l40 br45"
    I1$ = "C15 u5 r17 u10 l17 u5 r40 d5 l18 d10 r18 d5 l40 br45"
    N1$ = "C15  u20 r12 f15 r8 u15 r5 d20 l13 h15 l7 d15 l5 br45"
    O1$ = "C15  u20 r40 d20 l40 be5 u10 r30 d10 l30 bg5 br45"
    R1$ = "C15 u20 r40 d5 l35 d15 l5 br45"
    T1$ = "C15 br17 u15 l17 u5 r40 d5 l18 d15 l5 bl17 br45"
    V1$ = "C15 bu20 f20 e20 l5 g15 h15 l5 bd20 br45"
    EIGHT$ = "c15 u20 r40 d20 l40 bu5 br5 r30 u4 l30 d4 bu6 u4 r30 d4 l30 bl5 bd16 br45"

    Do
        _Limit 25
        Cls 0
        Circle (320, 190), size, 15

        If big = 0 Then Let playin = playin + 6
        If big = 1 Then Let playin = playin - 7
        If settings.sounds = 1 Then Sound playin * 2.5, 1

        Select Case size

            Case Is < 5
                small = 1

        End Select

        Select Case small

            Case 1
                big = 0
                Let size = size * 1.3

        End Select

        Select Case enough

            Case 1

                If size < 130 Then
                    Cls 0

                    Circle (320, 190), 102, 15
                    Circle (320, 190), 100, 0
                    Circle (285, 155), 35, 15
                    Circle Step(-5, -12), 12, 15
                    Circle Step(0, 20), 12, 15
                    Circle Step(0, 0), 8, 15
                    Circle Step(0, -20), 8, 15
                    Paint (290, 155), 15
                    Paint (285, 160), 15
                    Paint (285, 148), 15
                    Paint (280, 152), 0
                    Paint (320, 200), 0, 0
                    Paint (288, 150), 0, 0
                    Paint (280, 153), 0, 0
                    Paint (280, 173), 0, 0


                    Draw "bd200 bl67 "
                    GoSub waitt
                    Draw N1$
                    GoSub waitt
                    Draw O1$
                    GoSub waitt
                    Draw "c15 u5 r5 d5 l5 "
                    GoSub waitt
                    Draw "br45"
                    Draw EIGHT$
                    GoSub waitt
                    Draw "bl68 bd50 bl248"
                    Draw I1$
                    GoSub waitt
                    Draw N1$
                    GoSub waitt
                    Draw T1$
                    GoSub waitt
                    Draw E1$
                    GoSub waitt
                    Draw R1$
                    GoSub waitt
                    Draw A1$
                    GoSub waitt
                    Draw C1$
                    GoSub waitt
                    Draw T1$
                    GoSub waitt
                    Draw I1$
                    GoSub waitt
                    Draw V1$
                    GoSub waitt
                    Draw E1$
                    GoSub waitt
                    _Delay 0.2

                    Exit Do
                End If

        End Select

        Select Case size

            Case Is > 240
                big = 1

        End Select

        Select Case big

            Case 1
                size = size / 1.1
                enough = 1
                small = 0

        End Select

    Loop
    no8sounds
    Exit Sub

    waitt:
    If settings.sounds = 1 Then Play "l60 mb <<c>>"
    _Delay 0.10
    Return
End Sub

Sub no8sounds ()
    Select Case settings.sounds

        Case 1
            Play "L10  <<C4 C4 C> P4 C E- G# A G# E-> "

        Case 2
            Play "L10  <<C4 C4 C> P4 C E- G# A G# E-> "

        Case 3
            'ohhhhhhhhhhhhhhhhhhhhh no sound comes forth

    End Select
End Sub

Sub sparkleclear (c As Integer)
    Dim door1(3072), box(3072)
    Cls 0
    Line (0, 0)-(64, 0), c
    Line (64, 0)-(64, 48), c
    Line (64, 48)-(0, 48), c
    Line (0, 48)-(0, 0), c
    Paint (1, 1), c
    Get (0, 0)-(64, 48), door1()
    Cls 0
    Get (0, 0)-(64, 48), box()

    y = 0
    x = 0
    black = 0

    For t = 1 To 2
        y = 0

        For q = 1 To 10
            x = 0
            For z = 1 To 5
                _Delay 0.002
                If black = 0 Then Put (x, y), door1(), PSet
                If black = 1 Then Put (x, y), box(), PSet
                Let x = x + 128
            Next

            x = 64
            For z = 1 To 5
                _Delay 0.002
                If black = 0 Then
                    If x + 64 < 640 Then
                        Put (x, y), door1(), PSet
                    Else
                        Put (x - 1, y), door1(), PSet
                    End If
                End If
                If black = 1 Then
                    If x + 64 < 640 Then
                        Put (x, y), box(), PSet
                    Else
                        Put (x - 1, y), box(), PSet
                    End If
                End If
                x = x + 128
            Next
            y = y + 47
        Next

        black = 1
    Next
End Sub

Type dot
    xpos As Integer
    ypos As Integer
    alpha As Integer
    r As Integer
    a As Double
    b As Double
End Type

Sub introB
    'HERES ONE OF THE Three CONCEPT INTRO SEQUENCES

    'this is built ising three ko0l new programz i made
    'whirl,iMAgeData and xdraw

    'whirl is to flashmap what advanced castle is to normal castle
    'the pixels actually whirlpool towards thier central location rather
    'than move in a straight line. its sniff'n'smile fun at its best

    'iMAgeData can scan any image and store all the coordinates as data
    'so that the information can be used in whirl without me having to
    'write hundreds of sets of coordinates

    'xdraw is what drew the logo

    max = 256
    Dim dot(max) As dot


    pi = 3.141592654#
    mul = .98
    c = 16
    r = -4
    b = -4
    g = -4
    ainc = 2


    Cls 0
    Screen _NewImage(640, 480, 13)


    For y = 1 To max
        Randomize (Timer + Int(Rnd * 15000))
        dot(y).a = .04
        Randomize (Timer + Int(Rnd * 15000))
        dot(y).b = (Rnd * .4) + .1
        Read z
        dot(y).xpos = z + 160
        Read z
        dot(y).ypos = z + 120
        Randomize (Timer + Int(Rnd * 15000))
        dot(y).alpha = Int(Rnd * 360) + 1
        Randomize (Timer + Int(Rnd * 15000))
        dot(y).r = Int(Rnd * 25) + 25
    Next



    For a = 16 To 31
        r = r + 4
        If CInt(r) > 63 Then r = 63
        b = b + 4
        If CInt(b) > 63 Then b = 63
        g = g + 4
        If CInt(g) > 63 Then g = 63
        Palette a, (65536 * CInt(b) + 256 * CInt(g) + CInt(r))
    Next


    Do

        For rotation = 1 To 360
            mul = mul * 1.001
            count = count + 1

            c = c + .25
            If c > 31 Then c = 31

            For num = 1 To max
                dot(num).a = dot(num).a * mul
                dot(num).b = dot(num).b * mul
                dot(num).alpha = dot(num).alpha + ainc
                If dot(num).alpha = 360 Then dot(num).alpha = 1
                LINE (dot(num).xpos + ((dot(num).r / dot(num).a) * COS((dot(num).alpha * pi) / 180)), dot(num).ypos + ((dot(num).r / dot(num).b) * -SIN((dot(num).alpha * pi) / 180)))-(dot(num).xpos + ((dot(num).r / dot(num).a) * COS((dot(num).alpha  _
* pi) / 180)), dot(num).ypos + ((dot(num).r / dot(num).b) * -SIN((dot(num).alpha * pi) / 180))), c
            Next


            Wait &H3DA, 8
            _Limit 60
            place = 0

            For y = 1 To max
                If Point(dot(y).xpos, dot(y).ypos) = 0 Then place = 1
            Next

            If place = 0 Then
                endloop = 1
                Exit For
            End If

            For num = 1 To max
                LINE (dot(num).xpos + ((dot(num).r / dot(num).a) * COS((dot(num).alpha * pi) / 180)), dot(num).ypos + ((dot(num).r / dot(num).b) * -SIN((dot(num).alpha * pi) / 180)))-(dot(num).xpos + ((dot(num).r / dot(num).a) * COS((dot(num).alpha  _
* pi) / 180)), dot(num).ypos + ((dot(num).r / dot(num).b) * -SIN((dot(num).alpha * pi) / 180))), 0
            Next


        Next

        If endloop = 1 Then Exit Do
    Loop

    x = 304
    y = 220

    Line (x + -41, y + -25)-(x + -43, y + -4), 16
    Line (x + -43, y + -4)-(x + -38, y + -2), 16
    Line (x + -38, y + -2)-(x + -33, y + -16), 16
    Line (x + -33, y + -16)-(x + -27, y + -1), 16
    Line (x + -27, y + -1)-(x + -19, y + -1), 16
    Line (x + -19, y + -1)-(x + -12, y + -30), 16
    Line (x + -12, y + -30)-(x + -25, y + -30), 16
    Line (x + -25, y + -30)-(x + -26, y + -13), 16
    Line (x + -26, y + -13)-(x + -34, y + -27), 16
    Line (x + -34, y + -27)-(x + -41, y + -25), 16
    Line (x + -18, y + -4)-(x + 2, y + -1), 16
    Line (x + 2, y + -1)-(x + 5, y + -22), 16
    Line (x + 5, y + -22)-(x + -14, y + -20), 16
    Line (x + -11, y + -15)-(x + -12, y + -8), 16
    Line (x + -12, y + -8)-(x + -2, y + -8), 16
    Line (x + -2, y + -8)-(x + -1, y + -18), 16
    Line (x + -1, y + -18)-(x + -11, y + -15), 16
    Line (x + 11, y + -5)-(x + 10, y + -1), 16
    Line (x + 10, y + -1)-(x + 16, y + 1), 16
    Line (x + 16, y + 1)-(x + 18, y + -5), 16
    Line (x + 18, y + -5)-(x + 11, y + -6), 16

    x = 464
    y = 360

    Circle (x + -114, y + -154), 20, 16
    Circle (x + -114, y + -154), 14, 16
    Line (x + -119, y + -161)-(x + -108, y + -161), 16
    Line (x + -108, y + -161)-(x + -108, y + -156), 16
    Line (x + -108, y + -156)-(x + -110, y + -154), 16
    Line (x + -110, y + -154)-(x + -108, y + -152), 16
    Line (x + -108, y + -152)-(x + -108, y + -146), 16
    Line (x + -108, y + -146)-(x + -119, y + -146), 16
    Line (x + -119, y + -146)-(x + -119, y + -152), 16
    Line (x + -119, y + -152)-(x + -117, y + -154), 16
    Line (x + -117, y + -154)-(x + -119, y + -156), 16
    Line (x + -119, y + -156)-(x + -119, y + -161), 16
    Line (x + -116, y + -151)-(x + -116, y + -149), 16
    Line (x + -116, y + -149)-(x + -111, y + -149), 16
    Line (x + -110, y + -149)-(x + -110, y + -151), 16
    Line (x + -111, y + -152)-(x + -115, y + -152), 16
    Line (x + -116, y + -158)-(x + -111, y + -158), 16
    Line (x + -111, y + -158)-(x + -111, y + -156), 16
    Line (x + -112, y + -155)-(x + -115, y + -155), 16
    Line (x + -116, y + -156)-(x + -116, y + -158), 16
    PSet (x + -111, y + -152), 0
    PSet (x + -110, y + -151), 0
    PSet (x + -110, y + -150), 0
    PSet (x + -110, y + -149), 0
    Line (x + -111, y + -149)-(x + -111, y + -151), 16

    Paint (x + -131, y + -154), 16
    Paint (x + -111, y + -147), 16
    Paint (x + -185, y + -147), 16
    Paint (x + -163, y + -145), 16
    Paint (x + -147, y + -142), 16

    Locate 30, 35
    Color 16
    Print "INTERACTIVE"
    Locate 1, 1

    Circle (x + -114, y + -154), 20, 15
    Circle (x + -114, y + -154), 14, 15
    Line (x + -119, y + -161)-(x + -108, y + -161), 15
    Line (x + -108, y + -161)-(x + -108, y + -156), 15
    Line (x + -108, y + -156)-(x + -110, y + -154), 15
    Line (x + -110, y + -154)-(x + -108, y + -152), 15
    Line (x + -108, y + -152)-(x + -108, y + -146), 15
    Line (x + -108, y + -146)-(x + -119, y + -146), 15
    Line (x + -119, y + -146)-(x + -119, y + -152), 15
    Line (x + -119, y + -152)-(x + -117, y + -154), 15
    Line (x + -117, y + -154)-(x + -119, y + -156), 15
    Line (x + -119, y + -156)-(x + -119, y + -161), 15
    Line (x + -116, y + -151)-(x + -116, y + -149), 15
    Line (x + -116, y + -149)-(x + -111, y + -149), 15
    Line (x + -110, y + -149)-(x + -110, y + -151), 15
    Line (x + -111, y + -152)-(x + -115, y + -152), 15
    Line (x + -116, y + -158)-(x + -111, y + -158), 15
    Line (x + -111, y + -158)-(x + -111, y + -156), 15
    Line (x + -112, y + -155)-(x + -115, y + -155), 15
    Line (x + -116, y + -156)-(x + -116, y + -158), 15
    PSet (x + -111, y + -152), 16
    PSet (x + -110, y + -151), 16
    PSet (x + -110, y + -150), 16
    PSet (x + -110, y + -149), 16
    Line (x + -111, y + -149)-(x + -111, y + -151), 15



    For a = 0 To 126
        Palette 16, (65536 * CInt(a / 2) + 256 * CInt(a / 2) + CInt(a / 2))
        Wait &H3DA, 8
        _Delay 0.01
    Next

    no8sounds

    For a = 0 To 63
        Palette 0, (65536 * a + 256 * a + a)
        Wait &H3DA, 8
        _Delay 0.01
    Next

    For a = 0 To 63
        For b = 0 To 31
            Palette b, (65536 * Abs(63 - a) + 256 * Abs(63 - a) + Abs(63 - a))
        Next
        Wait &H3DA, 8
        _Delay 0.01
    Next
    Screen 12
    Width 80, 30
    Cls 0
End Sub

'$INCLUDE: 'env-helpers.bm'
'$INCLUDE: 'Shop.bm'
'$INCLUDE: 'Battle.bm'
'$INCLUDE: 'level1.bm'
'$INCLUDE: 'level2.bm'
