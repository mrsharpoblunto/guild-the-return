'helpful drawing utility
'PUT A PRE RENDERED BACKGROUND IN BACKGROUND
Cls 0
Screen 12
Width 80, 60

Dim GEFION(100)

Line (1, 1)-(2, 2), 9, BF
PSet (1, 1), 15
Get (1, 1)-(2, 2), GEFION()
Cls 0

location$ = "guild map helper 1.0   1998 no.8 interactive"
x = 320
y = 200
s = 1

GoSub resetscr
GoSub background

Do

    Put (x, y), GEFION()

    Locate 54, 2
    Print "x"
    Locate 54, 4
    Print Using "###"; x
    Locate 54, 8
    Print "y"
    Locate 54, 10
    Print Using "###"; y
    Locate 54, 16
    Print "columns"
    Locate 54, 24
    Print Using "##.#"; (y / 8)
    Locate 54, 31
    Print " spaces"
    Locate 54, 39
    Print Using "##.#"; (x / 8)
    Locate 55, 2
    Print "radius"; r; "   "
    Locate 56, 2
    Print "colour"
    Locate 56, 9
    If c > 0 Then
        Color c
        Print c; "   "
    Else
        Color 15
        Print c; "   "
    End If
    Color 15
    Locate 57, 2
    Print "speed"; s

    Locate 54, 73
    Print "line"; lineon

    Wait &H3DA, 8
    Put (x, y), GEFION(), Xor

    If painte = 1 Then
        Paint (x, y), c
        painte = 0
    End If

    chor$ = InKey$

    Select Case chor$

        Case Chr$(0) + "H"
            y = y - s
            If y < 1 Then y = 1

        Case Chr$(0) + "P"
            y = y + s
            If y > 401 Then y = 401

        Case Chr$(0) + "K"
            x = x - s
            If x < 1 Then x = 1

        Case Chr$(0) + "M"
            x = x + s
            If x > 638 Then x = 638

        Case Chr$(32)
            If lineon = 0 Then
                bx = x
                by = y
                PSet (x, y), 15
            Else
                Line (bx, by)-(x, y), c
            End If
            lineon = lineon + 1
            If lineon > 1 Then lineon = 0

        Case Chr$(13)
            painte = 1

        Case Chr$(99)
            c = c + 1
            If c > 15 Then c = 0

        Case Chr$(48)
            Circle (x, y), r, c

        Case Chr$(114)
            r = r + 1
            If r > 100 Then r = 0

        Case Chr$(100)
            PSet (x, y), 15

        Case Chr$(45)
            GoSub resetscr
            GoSub background

        Case Chr$(61)
            s = s + 1
            If s > 5 Then s = 1

        Case Chr$(98)
            If lineon = 0 Then
                bx = x
                by = y
                PSet (x, y), 15
            Else
                Line (bx, by)-(x, y), c, B
            End If
            lineon = lineon + 1
            If lineon > 1 Then lineon = 0

        Case Chr$(102)
            If lineon = 0 Then
                bx = x
                by = y
                PSet (x, y), 15
            Else
                Line (bx, by)-(x, y), c, BF
            End If
            lineon = lineon + 1
            If lineon > 1 Then lineon = 0

        Case Chr$(27)
            End

    End Select
Loop

resetscr:
Cls 0
Locate 52, 40 - CInt(Len(location$) / 2)
Print UCase$(location$)
Locate 55, 20
Print "c = colour  r = radius        b = box         d = dot"
Locate 56, 20
Print "0 = circle  enter = paint     space = line"
Locate 57, 20
Print "- = clear   + = cursor speed  f = filled box"
Line (0, 402)-(640, 402), 9
Line (0, 423)-(640, 423), 9
Line (0, 0)-(639, 463), 9, B
Line (120, 432)-(639, 432), 9
Line (120, 433)-(120, 463), 9
Return





background:

Line (30, 30)-(166, 160), 8, B
Line (176, 30)-(313, 160), 8, B
Line (322, 30)-(460, 160), 8, B

Line (20, 20)-(470, 20), 8
Line (470, 20)-(470, 120), 8
Line (470, 120)-(620, 120), 8
Line (620, 120)-(620, 370), 8
Line (620, 370)-(470, 370), 8
Line (470, 370)-(470, 270), 8
Line (470, 270)-(20, 270), 8
Line (20, 270)-(20, 20), 8
Line (470, 120)-(470, 170), 8
Line (470, 170)-(30, 170), 8
Line (30, 170)-(30, 260), 8
Line (30, 260)-(480, 260), 8
Line (480, 260)-(480, 360), 8
Line (480, 360)-(610, 360), 8
Line (610, 360)-(610, 130), 8
Line (610, 130)-(470, 130), 8
Line (470, 120)-(470, 120), 0
Line (530, 260)-(610, 260), 8
Line (530, 270)-(610, 270), 8
Line (530, 270)-(530, 270), 8
Line (610, 260)-(610, 270), 0
Line (470, 120)-(470, 130), 0
Line (530, 260)-(530, 270), 8



Return

