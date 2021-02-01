.class Lorg/libsdl/app/SDLGenericMotionListener_API12;
.super Ljava/lang/Object;
.source "SDLControllerManager.java"

# interfaces
.implements Landroid/view/View$OnGenericMotionListener;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 564
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEventX(Landroid/view/MotionEvent;)F
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 627
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    return v0
.end method

.method public getEventY(Landroid/view/MotionEvent;)F
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 631
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    return v0
.end method

.method public inRelativeMode()Z
    .registers 2

    .line 614
    const/4 v0, 0x0

    return v0
.end method

.method public onGenericMotion(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 571
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    const/16 v1, 0x201

    if-eq v0, v1, :cond_42

    const/16 v1, 0x401

    if-eq v0, v1, :cond_42

    const/16 v1, 0x2002

    const/4 v2, 0x0

    if-eq v0, v1, :cond_17

    const v1, 0x1000010

    if-eq v0, v1, :cond_42

    goto :goto_41

    .line 578
    :cond_17
    sget-boolean v0, Lorg/libsdl/app/SDLActivity;->mSeparateMouseAndTouch:Z

    if-nez v0, :cond_1c

    .line 579
    goto :goto_41

    .line 581
    :cond_1c
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 582
    .local v0, "action":I
    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_48

    .line 597
    goto :goto_41

    .line 584
    :pswitch_25
    const/16 v3, 0xa

    invoke-virtual {p2, v3, v2}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v3

    .line 585
    .local v3, "x":F
    const/16 v4, 0x9

    invoke-virtual {p2, v4, v2}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v4

    .line 586
    .local v4, "y":F
    invoke-static {v2, v0, v3, v4, v2}, Lorg/libsdl/app/SDLActivity;->onNativeMouse(IIFFZ)V

    .line 587
    return v1

    .line 590
    .end local v3    # "x":F
    .end local v4    # "y":F
    :pswitch_35
    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 591
    .restart local v3    # "x":F
    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 593
    .restart local v4    # "y":F
    invoke-static {v2, v0, v3, v4, v2}, Lorg/libsdl/app/SDLActivity;->onNativeMouse(IIFFZ)V

    .line 594
    return v1

    .line 606
    .end local v0    # "action":I
    .end local v3    # "x":F
    .end local v4    # "y":F
    :goto_41
    return v2

    .line 575
    :cond_42
    invoke-static {p2}, Lorg/libsdl/app/SDLControllerManager;->handleJoystickMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    nop

    :pswitch_data_48
    .packed-switch 0x7
        :pswitch_35
        :pswitch_25
    .end packed-switch
.end method

.method public reclaimRelativeMouseModeIfNeeded()V
    .registers 1

    .line 624
    return-void
.end method

.method public setRelativeMouseEnabled(Z)Z
    .registers 3
    .param p1, "enabled"    # Z

    .line 618
    const/4 v0, 0x0

    return v0
.end method

.method public supportsRelativeMouse()Z
    .registers 2

    .line 610
    const/4 v0, 0x0

    return v0
.end method
