DECLARE SUB fade ()
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

Type dot
    xpos As Integer
    ypos As Integer
    alpha As Integer
    r As Integer
    a As Double
    b As Double
End Type


Common Shared second
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
Screen 13


For y = 1 To max
    Randomize (Timer + Int(Rnd * 15000))
    dot(y).a = .04
    Randomize (Timer + Int(Rnd * 15000))
    dot(y).b = (Rnd * .4) + .1
    Read z
    dot(y).xpos = z
    Read z
    dot(y).ypos = z
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

fade

ending:
Run getAppDir$ + "\main"


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



EXITDO:
EXITLOOP = 1
Return

Sub fade
    x = 144
    y = 100

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

    x = 304
    y = 240

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

    Locate 15, 15
    Color 16
    Print "INTERACTIVE"

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
    Next

    _Delay 1.5

    For a = 0 To 63
        Palette 0, (65536 * a + 256 * a + a)
        Wait &H3DA, 8
    Next

    For a = 0 To 63
        Palette 0, (65536 * Abs(63 - a) + 256 * Abs(63 - a) + Abs(63 - a))
        Palette 16, (65536 * Abs(63 - a) + 256 * Abs(63 - a) + Abs(63 - a))
        Palette 15, (65536 * Abs(63 - a) + 256 * Abs(63 - a) + Abs(63 - a))

        Wait &H3DA, 8
    Next


End Sub

'$INCLUDE:'env-helpers.bm'
