.class Lorg/libsdl/app/SDLInputConnection;
.super Landroid/view/inputmethod/BaseInputConnection;
.source "SDLActivity.java"


# direct methods
.method public constructor <init>(Landroid/view/View;Z)V
    .registers 3
    .param p1, "targetView"    # Landroid/view/View;
    .param p2, "fullEditor"    # Z

    .line 2040
    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    .line 2042
    return-void
.end method

.method public static native nativeCommitText(Ljava/lang/String;I)V
.end method


# virtual methods
.method public commitText(Ljava/lang/CharSequence;I)Z
    .registers 5
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    .line 2077
    const/4 v0, 0x0

    .line 2077
    .local v0, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_11

    .line 2078
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 2079
    .local v1, "c":C
    invoke-virtual {p0, v1}, Lorg/libsdl/app/SDLInputConnection;->nativeGenerateScancodeForUnichar(C)V

    .line 2077
    .end local v1    # "c":C
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2082
    .end local v0    # "i":I
    :cond_11
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/libsdl/app/SDLInputConnection;->nativeCommitText(Ljava/lang/String;I)V

    .line 2084
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    move-result v0

    return v0
.end method

.method public deleteSurroundingText(II)Z
    .registers 8
    .param p1, "beforeLength"    # I
    .param p2, "afterLength"    # I

    .line 2105
    if-lez p1, :cond_32

    if-nez p2, :cond_32

    .line 2106
    const/4 v0, 0x1

    move v1, p1

    const/4 p1, 0x1

    .line 2108
    .local v1, "beforeLength":I
    .local p1, "ret":Z
    :goto_7
    add-int/lit8 v2, v1, -0x1

    .line 2108
    .local v2, "beforeLength":I
    if-lez v1, :cond_31

    .line 2109
    .end local v1    # "beforeLength":I
    new-instance v1, Landroid/view/KeyEvent;

    const/16 v3, 0x43

    const/4 v4, 0x0

    invoke-direct {v1, v4, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v1}, Lorg/libsdl/app/SDLInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_26

    new-instance v1, Landroid/view/KeyEvent;

    invoke-direct {v1, v0, v3}, Landroid/view/KeyEvent;-><init>(II)V

    .line 2110
    invoke-virtual {p0, v1}, Lorg/libsdl/app/SDLInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_26

    const/4 v1, 0x1

    goto :goto_27

    :cond_26
    const/4 v1, 0x0

    .line 2111
    .local v1, "ret_key":Z
    :goto_27
    if-eqz p1, :cond_2d

    if-eqz v1, :cond_2d

    const/4 v4, 0x1

    nop

    :cond_2d
    move p1, v4

    .line 2112
    .end local v1    # "ret_key":Z
    nop

    .line 2106
    move v1, v2

    goto :goto_7

    .line 2113
    :cond_31
    return p1

    .line 2116
    .end local v2    # "beforeLength":I
    .local p1, "beforeLength":I
    :cond_32
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->deleteSurroundingText(II)Z

    move-result v0

    return v0
.end method

.method public native nativeGenerateScancodeForUnichar(C)V
.end method

.method public native nativeSetComposingText(Ljava/lang/String;I)V
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 7
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 2058
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_2a

    .line 2059
    const-string v0, "SDL_RETURN_KEY_HIDES_IME"

    invoke-static {v0}, Lorg/libsdl/app/SDLActivity;->nativeGetHint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2060
    .local v0, "imeHide":Ljava/lang/String;
    if-eqz v0, :cond_2a

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 2061
    invoke-static {}, Lorg/libsdl/app/SDL;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 2062
    .local v1, "c":Landroid/content/Context;
    instance-of v2, v1, Lorg/libsdl/app/SDLActivity;

    if-eqz v2, :cond_2a

    .line 2063
    move-object v2, v1

    check-cast v2, Lorg/libsdl/app/SDLActivity;

    .line 2064
    .local v2, "activity":Lorg/libsdl/app/SDLActivity;
    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/libsdl/app/SDLActivity;->sendCommand(ILjava/lang/Object;)Z

    .line 2065
    const/4 v3, 0x1

    return v3

    .line 2071
    .end local v0    # "imeHide":Ljava/lang/String;
    .end local v1    # "c":Landroid/content/Context;
    .end local v2    # "activity":Lorg/libsdl/app/SDLActivity;
    :cond_2a
    invoke-super {p0, p1}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .registers 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    .line 2090
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/libsdl/app/SDLInputConnection;->nativeSetComposingText(Ljava/lang/String;I)V

    .line 2092
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    move-result v0

    return v0
.end method
