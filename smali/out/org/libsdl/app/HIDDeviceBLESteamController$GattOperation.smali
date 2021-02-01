.class Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;
.super Ljava/lang/Object;
.source "HIDDeviceBLESteamController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/libsdl/app/HIDDeviceBLESteamController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GattOperation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;
    }
.end annotation


# instance fields
.field mGatt:Landroid/bluetooth/BluetoothGatt;

.field mOp:Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;

.field mResult:Z

.field mUuid:Ljava/util/UUID;

.field mValue:[B


# direct methods
.method private constructor <init>(Landroid/bluetooth/BluetoothGatt;Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;Ljava/util/UUID;)V
    .registers 5
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "operation"    # Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;
    .param p3, "uuid"    # Ljava/util/UUID;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;->mResult:Z

    .line 66
    iput-object p1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;->mGatt:Landroid/bluetooth/BluetoothGatt;

    .line 67
    iput-object p2, p0, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;->mOp:Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;

    .line 68
    iput-object p3, p0, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;->mUuid:Ljava/util/UUID;

    .line 69
    return-void
.end method

.method private constructor <init>(Landroid/bluetooth/BluetoothGatt;Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;Ljava/util/UUID;[B)V
    .registers 6
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "operation"    # Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;
    .param p3, "uuid"    # Ljava/util/UUID;
    .param p4, "value"    # [B

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;->mResult:Z

    .line 72
    iput-object p1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;->mGatt:Landroid/bluetooth/BluetoothGatt;

    .line 73
    iput-object p2, p0, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;->mOp:Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;

    .line 74
    iput-object p3, p0, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;->mUuid:Ljava/util/UUID;

    .line 75
    iput-object p4, p0, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;->mValue:[B

    .line 76
    return-void
.end method

.method public static enableNotification(Landroid/bluetooth/BluetoothGatt;Ljava/util/UUID;)Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;
    .registers 4
    .param p0, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p1, "uuid"    # Ljava/util/UUID;

    .line 155
    new-instance v0, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;

    sget-object v1, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;->ENABLE_NOTIFICATION:Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;

    invoke-direct {v0, p0, v1, p1}, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;-><init>(Landroid/bluetooth/BluetoothGatt;Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;Ljava/util/UUID;)V

    return-object v0
.end method

.method private getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;
    .registers 4
    .param p1, "uuid"    # Ljava/util/UUID;

    .line 140
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;->mGatt:Landroid/bluetooth/BluetoothGatt;

    sget-object v1, Lorg/libsdl/app/HIDDeviceBLESteamController;->steamControllerService:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    .line 141
    .local v0, "valveService":Landroid/bluetooth/BluetoothGattService;
    if-nez v0, :cond_c

    .line 142
    const/4 v1, 0x0

    return-object v1

    .line 143
    :cond_c
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    return-object v1
.end method

.method public static readCharacteristic(Landroid/bluetooth/BluetoothGatt;Ljava/util/UUID;)Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;
    .registers 4
    .param p0, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p1, "uuid"    # Ljava/util/UUID;

    .line 147
    new-instance v0, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;

    sget-object v1, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;->CHR_READ:Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;

    invoke-direct {v0, p0, v1, p1}, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;-><init>(Landroid/bluetooth/BluetoothGatt;Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;Ljava/util/UUID;)V

    return-object v0
.end method

.method public static writeCharacteristic(Landroid/bluetooth/BluetoothGatt;Ljava/util/UUID;[B)Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;
    .registers 5
    .param p0, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "value"    # [B

    .line 151
    new-instance v0, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;

    sget-object v1, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;->CHR_WRITE:Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;

    invoke-direct {v0, p0, v1, p1, p2}, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;-><init>(Landroid/bluetooth/BluetoothGatt;Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;Ljava/util/UUID;[B)V

    return-object v0
.end method


# virtual methods
.method public finish()Z
    .registers 2

    .line 136
    iget-boolean v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;->mResult:Z

    return v0
.end method

.method public run()V
    .registers 9

    .line 82
    sget-object v0, Lorg/libsdl/app/HIDDeviceBLESteamController$5;->$SwitchMap$org$libsdl$app$HIDDeviceBLESteamController$GattOperation$Operation:[I

    iget-object v1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;->mOp:Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;

    invoke-virtual {v1}, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_de

    goto/16 :goto_dd

    .line 105
    :pswitch_11
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;->mUuid:Ljava/util/UUID;

    invoke-direct {p0, v0}, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 107
    .local v0, "chr":Landroid/bluetooth/BluetoothGattCharacteristic;
    if-eqz v0, :cond_dd

    .line 108
    const-string v3, "00002902-0000-1000-8000-00805f9b34fb"

    invoke-static {v3}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v3

    .line 109
    .local v3, "cccd":Landroid/bluetooth/BluetoothGattDescriptor;
    if-eqz v3, :cond_dd

    .line 110
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v4

    .line 112
    .local v4, "properties":I
    and-int/lit8 v5, v4, 0x10

    const/16 v6, 0x10

    if-ne v5, v6, :cond_32

    .line 113
    sget-object v5, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    .line 113
    .local v5, "value":[B
    :goto_31
    goto :goto_3b

    .line 114
    .end local v5    # "value":[B
    :cond_32
    and-int/lit8 v5, v4, 0x20

    const/16 v6, 0x20

    if-ne v5, v6, :cond_6e

    .line 115
    sget-object v5, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_INDICATION_VALUE:[B

    goto :goto_31

    .line 119
    .restart local v5    # "value":[B
    :goto_3b
    nop

    .line 122
    iget-object v6, p0, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;->mGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v6, v0, v2}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    .line 123
    invoke-virtual {v3, v5}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 124
    iget-object v6, p0, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;->mGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v6, v3}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result v6

    if-nez v6, :cond_6b

    .line 125
    const-string v2, "hidapi"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to write descriptor "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;->mUuid:Ljava/util/UUID;

    invoke-virtual {v7}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iput-boolean v1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;->mResult:Z

    .line 127
    return-void

    .line 129
    :cond_6b
    iput-boolean v2, p0, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;->mResult:Z

    .line 129
    .end local v0    # "chr":Landroid/bluetooth/BluetoothGattCharacteristic;
    .end local v3    # "cccd":Landroid/bluetooth/BluetoothGattDescriptor;
    .end local v4    # "properties":I
    .end local v5    # "value":[B
    goto :goto_dd

    .line 117
    .restart local v0    # "chr":Landroid/bluetooth/BluetoothGattCharacteristic;
    .restart local v3    # "cccd":Landroid/bluetooth/BluetoothGattDescriptor;
    .restart local v4    # "properties":I
    :cond_6e
    const-string v2, "hidapi"

    const-string v5, "Unable to start notifications on input characteristic"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iput-boolean v1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;->mResult:Z

    .line 119
    return-void

    .line 94
    .end local v0    # "chr":Landroid/bluetooth/BluetoothGattCharacteristic;
    .end local v3    # "cccd":Landroid/bluetooth/BluetoothGattDescriptor;
    .end local v4    # "properties":I
    :pswitch_78
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;->mUuid:Ljava/util/UUID;

    invoke-direct {p0, v0}, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 96
    .restart local v0    # "chr":Landroid/bluetooth/BluetoothGattCharacteristic;
    iget-object v3, p0, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;->mValue:[B

    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 97
    iget-object v3, p0, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;->mGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v3

    if-nez v3, :cond_aa

    .line 98
    const-string v2, "hidapi"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to write characteristic "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;->mUuid:Ljava/util/UUID;

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iput-boolean v1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;->mResult:Z

    .line 100
    goto :goto_dd

    .line 102
    :cond_aa
    iput-boolean v2, p0, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;->mResult:Z

    .line 103
    goto :goto_dd

    .line 84
    .end local v0    # "chr":Landroid/bluetooth/BluetoothGattCharacteristic;
    :pswitch_ad
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;->mUuid:Ljava/util/UUID;

    invoke-direct {p0, v0}, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 86
    .restart local v0    # "chr":Landroid/bluetooth/BluetoothGattCharacteristic;
    iget-object v3, p0, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;->mGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v3

    if-nez v3, :cond_da

    .line 87
    const-string v2, "hidapi"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to read characteristic "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;->mUuid:Ljava/util/UUID;

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iput-boolean v1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;->mResult:Z

    .line 89
    goto :goto_dd

    .line 91
    :cond_da
    iput-boolean v2, p0, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;->mResult:Z

    .line 92
    nop

    .line 133
    .end local v0    # "chr":Landroid/bluetooth/BluetoothGattCharacteristic;
    :cond_dd
    :goto_dd
    return-void

    :pswitch_data_de
    .packed-switch 0x1
        :pswitch_ad
        :pswitch_78
        :pswitch_11
    .end packed-switch
.end method
