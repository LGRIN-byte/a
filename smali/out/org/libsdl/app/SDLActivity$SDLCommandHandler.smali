.class public Lorg/libsdl/app/SDLActivity$SDLCommandHandler;
.super Landroid/os/Handler;
.source "SDLActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/libsdl/app/SDLActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SDLCommandHandler"
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 565
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 568
    invoke-static {}, Lorg/libsdl/app/SDL;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 569
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_e

    .line 570
    const-string v1, "SDL"

    const-string v2, "error handling message, getContext() returned null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    return-void

    .line 573
    :cond_e
    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_d2

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_fa

    .line 640
    instance-of v1, v0, Lorg/libsdl/app/SDLActivity;

    if-eqz v1, :cond_f9

    move-object v1, v0

    check-cast v1, Lorg/libsdl/app/SDLActivity;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lorg/libsdl/app/SDLActivity;->onUnhandledMessage(ILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f9

    .line 641
    const-string v1, "SDL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error handling message, command is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f9

    .line 613
    :pswitch_42
    sget-object v1, Lorg/libsdl/app/SDLActivity;->mTextEdit:Landroid/view/View;

    if-eqz v1, :cond_f9

    .line 617
    sget-object v1, Lorg/libsdl/app/SDLActivity;->mTextEdit:Landroid/view/View;

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 619
    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 620
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    sget-object v3, Lorg/libsdl/app/SDLActivity;->mTextEdit:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 622
    sput-boolean v2, Lorg/libsdl/app/SDLActivity;->mScreenKeyboardShown:Z

    .line 623
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    goto/16 :goto_f9

    .line 582
    :pswitch_65
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-ge v1, v3, :cond_6d

    .line 584
    goto/16 :goto_f9

    .line 586
    :cond_6d
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_b3

    .line 587
    move-object v1, v0

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 588
    .local v1, "window":Landroid/view/Window;
    if-eqz v1, :cond_b2

    .line 589
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/Integer;

    const/16 v4, 0x800

    const/16 v5, 0x400

    if-eqz v3, :cond_a1

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_a1

    .line 590
    const/16 v2, 0x1706

    .line 596
    .local v2, "flags":I
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 597
    invoke-virtual {v1, v5}, Landroid/view/Window;->addFlags(I)V

    .line 598
    invoke-virtual {v1, v4}, Landroid/view/Window;->clearFlags(I)V

    .line 599
    const/4 v3, 0x1

    sput-boolean v3, Lorg/libsdl/app/SDLActivity;->mFullscreenModeActive:Z

    .line 600
    .end local v2    # "flags":I
    goto :goto_b2

    .line 601
    :cond_a1
    const/16 v3, 0x100

    .line 602
    .local v3, "flags":I
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 603
    invoke-virtual {v1, v4}, Landroid/view/Window;->addFlags(I)V

    .line 604
    invoke-virtual {v1, v5}, Landroid/view/Window;->clearFlags(I)V

    .line 605
    sput-boolean v2, Lorg/libsdl/app/SDLActivity;->mFullscreenModeActive:Z

    .line 608
    .end local v1    # "window":Landroid/view/Window;
    .end local v3    # "flags":I
    :cond_b2
    :goto_b2
    goto :goto_f9

    .line 609
    :cond_b3
    const-string v1, "SDL"

    const-string v2, "error handling message, getContext() returned no Activity"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    goto :goto_f9

    .line 575
    :pswitch_bb
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_ca

    .line 576
    move-object v1, v0

    check-cast v1, Landroid/app/Activity;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_f9

    .line 578
    :cond_ca
    const-string v1, "SDL"

    const-string v2, "error handling message, getContext() returned no Activity"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    goto :goto_f9

    .line 627
    :cond_d2
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_f9

    .line 628
    move-object v1, v0

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 629
    .restart local v1    # "window":Landroid/view/Window;
    if-eqz v1, :cond_f8

    .line 630
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Integer;

    const/16 v3, 0x80

    if-eqz v2, :cond_f5

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_f5

    .line 631
    invoke-virtual {v1, v3}, Landroid/view/Window;->addFlags(I)V

    goto :goto_f8

    .line 633
    :cond_f5
    invoke-virtual {v1, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 636
    .end local v1    # "window":Landroid/view/Window;
    :cond_f8
    :goto_f8
    nop

    .line 644
    :cond_f9
    :goto_f9
    return-void

    :pswitch_data_fa
    .packed-switch 0x1
        :pswitch_bb
        :pswitch_65
        :pswitch_42
    .end packed-switch
.end method
