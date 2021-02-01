.class public Lorg/kamranzafar/jtar/Octal;
.super Ljava/lang/Object;
.source "Octal.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCheckSumOctalBytes(J[BII)I
    .registers 7
    .param p0, "value"    # J
    .param p2, "buf"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .line 115
    invoke-static {p0, p1, p2, p3, p4}, Lorg/kamranzafar/jtar/Octal;->getOctalBytes(J[BII)I

    .line 116
    add-int v0, p3, p4

    add-int/lit8 v0, v0, -0x1

    const/16 v1, 0x20

    aput-byte v1, p2, v0

    .line 117
    add-int v0, p3, p4

    add-int/lit8 v0, v0, -0x2

    const/4 v1, 0x0

    aput-byte v1, p2, v0

    .line 118
    add-int v0, p3, p4

    return v0
.end method

.method public static getLongOctalBytes(J[BII)I
    .registers 8
    .param p0, "value"    # J
    .param p2, "buf"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .line 135
    add-int/lit8 v0, p4, 0x1

    new-array v0, v0, [B

    .line 136
    .local v0, "temp":[B
    add-int/lit8 v1, p4, 0x1

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v2, v1}, Lorg/kamranzafar/jtar/Octal;->getOctalBytes(J[BII)I

    .line 137
    invoke-static {v0, v2, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 138
    add-int v1, p3, p4

    return v1
.end method

.method public static getOctalBytes(J[BII)I
    .registers 15
    .param p0, "value"    # J
    .param p2, "buf"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .line 78
    add-int/lit8 v0, p4, -0x1

    .line 80
    .local v0, "idx":I
    add-int v1, p3, v0

    const/4 v2, 0x0

    aput-byte v2, p2, v1

    .line 81
    add-int/lit8 v0, v0, -0x1

    .line 82
    add-int v1, p3, v0

    const/16 v2, 0x20

    aput-byte v2, p2, v1

    .line 83
    add-int/lit8 v0, v0, -0x1

    .line 85
    const-wide/16 v3, 0x0

    cmp-long v1, p0, v3

    const/16 v5, 0x30

    if-nez v1, :cond_20

    .line 86
    add-int v1, p3, v0

    aput-byte v5, p2, v1

    .line 87
    add-int/lit8 v0, v0, -0x1

    goto :goto_39

    .line 89
    :cond_20
    move v6, v0

    move-wide v0, p0

    .line 89
    .local v0, "val":J
    .local v6, "idx":I
    :goto_22
    if-ltz v6, :cond_38

    cmp-long v7, v0, v3

    if-lez v7, :cond_38

    .line 90
    add-int v7, p3, v6

    const-wide/16 v8, 0x7

    and-long/2addr v8, v0

    long-to-int v8, v8

    int-to-byte v8, v8

    add-int/2addr v8, v5

    int-to-byte v8, v8

    aput-byte v8, p2, v7

    .line 91
    const/4 v7, 0x3

    shr-long/2addr v0, v7

    .line 89
    add-int/lit8 v6, v6, -0x1

    goto :goto_22

    .line 95
    .end local v0    # "val":J
    :cond_38
    move v0, v6

    .line 95
    .end local v6    # "idx":I
    .local v0, "idx":I
    :goto_39
    if-ltz v0, :cond_42

    .line 96
    add-int v1, p3, v0

    aput-byte v2, p2, v1

    .line 95
    add-int/lit8 v0, v0, -0x1

    goto :goto_39

    .line 99
    :cond_42
    add-int v1, p3, p4

    return v1
.end method

.method public static parseOctal([BII)J
    .registers 14
    .param p0, "header"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 40
    const-wide/16 v0, 0x0

    .line 41
    .local v0, "result":J
    const/4 v2, 0x1

    .line 43
    .local v2, "stillPadding":Z
    add-int v3, p1, p2

    .line 44
    .local v3, "end":I
    move-wide v4, v0

    move v0, p1

    .line 44
    .local v0, "i":I
    .local v4, "result":J
    :goto_7
    if-ge v0, v3, :cond_30

    .line 45
    aget-byte v1, p0, v0

    if-nez v1, :cond_e

    .line 46
    goto :goto_30

    .line 48
    :cond_e
    aget-byte v1, p0, v0

    const/16 v6, 0x30

    const/16 v7, 0x20

    if-eq v1, v7, :cond_1a

    aget-byte v1, p0, v0

    if-ne v1, v6, :cond_22

    .line 49
    :cond_1a
    if-eqz v2, :cond_1d

    .line 50
    goto :goto_2d

    .line 52
    :cond_1d
    aget-byte v1, p0, v0

    if-ne v1, v7, :cond_22

    .line 53
    goto :goto_30

    .line 56
    :cond_22
    const/4 v1, 0x0

    .line 58
    .end local v2    # "stillPadding":Z
    .local v1, "stillPadding":Z
    const/4 v2, 0x3

    shl-long v7, v4, v2

    aget-byte v2, p0, v0

    sub-int/2addr v2, v6

    int-to-long v9, v2

    add-long/2addr v7, v9

    .line 44
    .end local v4    # "result":J
    .local v7, "result":J
    move v2, v1

    move-wide v4, v7

    .line 44
    .end local v1    # "stillPadding":Z
    .end local v7    # "result":J
    .restart local v2    # "stillPadding":Z
    .restart local v4    # "result":J
    :goto_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 61
    .end local v0    # "i":I
    :cond_30
    :goto_30
    return-wide v4
.end method
