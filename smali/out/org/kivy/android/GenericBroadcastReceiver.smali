.class public Lorg/kivy/android/GenericBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GenericBroadcastReceiver.java"


# instance fields
.field listener:Lorg/kivy/android/GenericBroadcastReceiverCallback;


# direct methods
.method public constructor <init>(Lorg/kivy/android/GenericBroadcastReceiverCallback;)V
    .registers 2
    .param p1, "listener"    # Lorg/kivy/android/GenericBroadcastReceiverCallback;

    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 13
    iput-object p1, p0, Lorg/kivy/android/GenericBroadcastReceiver;->listener:Lorg/kivy/android/GenericBroadcastReceiverCallback;

    .line 14
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 17
    iget-object v0, p0, Lorg/kivy/android/GenericBroadcastReceiver;->listener:Lorg/kivy/android/GenericBroadcastReceiverCallback;

    invoke-interface {v0, p1, p2}, Lorg/kivy/android/GenericBroadcastReceiverCallback;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 18
    return-void
.end method
