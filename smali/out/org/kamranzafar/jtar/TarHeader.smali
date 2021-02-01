.class public Lorg/kamranzafar/jtar/TarHeader;
.super Ljava/lang/Object;
.source "TarHeader.java"


# static fields
.field public static final CHKSUMLEN:I = 0x8

.field public static final GIDLEN:I = 0x8

.field public static final LF_BLK:B = 0x34t

.field public static final LF_CHR:B = 0x33t

.field public static final LF_CONTIG:B = 0x37t

.field public static final LF_DIR:B = 0x35t

.field public static final LF_FIFO:B = 0x36t

.field public static final LF_LINK:B = 0x31t

.field public static final LF_NORMAL:B = 0x30t

.field public static final LF_OLDNORM:B = 0x0t

.field public static final LF_SYMLINK:B = 0x32t

.field public static final MODELEN:I = 0x8

.field public static final MODTIMELEN:I = 0xc

.field public static final NAMELEN:I = 0x64

.field public static final SIZELEN:I = 0xc

.field public static final UIDLEN:I = 0x8

.field public static final USTAR_DEVLEN:I = 0x8

.field public static final USTAR_FILENAME_PREFIX:I = 0x9b

.field public static final USTAR_GROUP_NAMELEN:I = 0x20

.field public static final USTAR_MAGIC:Ljava/lang/String; = "ustar"

.field public static final USTAR_MAGICLEN:I = 0x8

.field public static final USTAR_USER_NAMELEN:I = 0x20


# instance fields
.field public checkSum:I

.field public devMajor:I

.field public devMinor:I

.field public groupId:I

.field public groupName:Ljava/lang/StringBuffer;

.field public linkFlag:B

.field public linkName:Ljava/lang/StringBuffer;

.field public magic:Ljava/lang/StringBuffer;

.field public modTime:J

.field public mode:I

.field public name:Ljava/lang/StringBuffer;

.field public namePrefix:Ljava/lang/StringBuffer;

.field public size:J

.field public userId:I

.field public userName:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "ustar"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/kamranzafar/jtar/TarHeader;->magic:Ljava/lang/StringBuffer;

    .line 128
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/kamranzafar/jtar/TarHeader;->name:Ljava/lang/StringBuffer;

    .line 129
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/kamranzafar/jtar/TarHeader;->linkName:Ljava/lang/StringBuffer;

    .line 131
    const-string v0, "user.name"

    const-string v1, ""

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "user":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x1f

    const/4 v3, 0x0

    if-le v1, v2, :cond_2f

    .line 134
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 136
    :cond_2f
    iput v3, p0, Lorg/kamranzafar/jtar/TarHeader;->userId:I

    .line 137
    iput v3, p0, Lorg/kamranzafar/jtar/TarHeader;->groupId:I

    .line 138
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/kamranzafar/jtar/TarHeader;->userName:Ljava/lang/StringBuffer;

    .line 139
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/kamranzafar/jtar/TarHeader;->groupName:Ljava/lang/StringBuffer;

    .line 140
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v1, p0, Lorg/kamranzafar/jtar/TarHeader;->namePrefix:Ljava/lang/StringBuffer;

    .line 141
    return-void
.end method

.method public static createHeader(Ljava/lang/String;JJZ)Lorg/kamranzafar/jtar/TarHeader;
    .registers 12
    .param p0, "entryName"    # Ljava/lang/String;
    .param p1, "size"    # J
    .param p3, "modTime"    # J
    .param p5, "dir"    # Z

    .line 210
    move-object v0, p0

    .line 211
    .local v0, "name":Ljava/lang/String;
    sget-char v1, Ljava/io/File;->separatorChar:C

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lorg/kamranzafar/jtar/TarUtils;->trim(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    .line 213
    new-instance v1, Lorg/kamranzafar/jtar/TarHeader;

    invoke-direct {v1}, Lorg/kamranzafar/jtar/TarHeader;-><init>()V

    .line 214
    .local v1, "header":Lorg/kamranzafar/jtar/TarHeader;
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, ""

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v3, v1, Lorg/kamranzafar/jtar/TarHeader;->linkName:Ljava/lang/StringBuffer;

    .line 216
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    const/16 v5, 0x64

    if-le v3, v5, :cond_45

    .line 217
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v3, v1, Lorg/kamranzafar/jtar/TarHeader;->namePrefix:Ljava/lang/StringBuffer;

    .line 218
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v3, v1, Lorg/kamranzafar/jtar/TarHeader;->name:Ljava/lang/StringBuffer;

    goto :goto_4c

    .line 220
    :cond_45
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v3, v1, Lorg/kamranzafar/jtar/TarHeader;->name:Ljava/lang/StringBuffer;

    .line 223
    :goto_4c
    if-eqz p5, :cond_72

    .line 224
    const/16 v3, 0x41ed

    iput v3, v1, Lorg/kamranzafar/jtar/TarHeader;->mode:I

    .line 225
    const/16 v3, 0x35

    iput-byte v3, v1, Lorg/kamranzafar/jtar/TarHeader;->linkFlag:B

    .line 226
    iget-object v3, v1, Lorg/kamranzafar/jtar/TarHeader;->name:Ljava/lang/StringBuffer;

    iget-object v5, v1, Lorg/kamranzafar/jtar/TarHeader;->name:Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    if-eq v3, v2, :cond_6d

    .line 227
    iget-object v2, v1, Lorg/kamranzafar/jtar/TarHeader;->name:Ljava/lang/StringBuffer;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 229
    :cond_6d
    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lorg/kamranzafar/jtar/TarHeader;->size:J

    goto :goto_7d

    .line 231
    :cond_72
    const v2, 0x81a4

    iput v2, v1, Lorg/kamranzafar/jtar/TarHeader;->mode:I

    .line 232
    const/16 v2, 0x30

    iput-byte v2, v1, Lorg/kamranzafar/jtar/TarHeader;->linkFlag:B

    .line 233
    iput-wide p1, v1, Lorg/kamranzafar/jtar/TarHeader;->size:J

    .line 236
    :goto_7d
    iput-wide p3, v1, Lorg/kamranzafar/jtar/TarHeader;->modTime:J

    .line 237
    iput v4, v1, Lorg/kamranzafar/jtar/TarHeader;->checkSum:I

    .line 238
    iput v4, v1, Lorg/kamranzafar/jtar/TarHeader;->devMajor:I

    .line 239
    iput v4, v1, Lorg/kamranzafar/jtar/TarHeader;->devMinor:I

    .line 241
    return-object v1
.end method

.method public static getNameBytes(Ljava/lang/StringBuffer;[BII)I
    .registers 8
    .param p0, "name"    # Ljava/lang/StringBuffer;
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 183
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 183
    .local v1, "i":I
    :goto_2
    if-ge v1, p3, :cond_16

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-ge v1, v2, :cond_16

    .line 184
    add-int v2, p2, v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    .line 183
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 187
    :cond_16
    :goto_16
    if-ge v1, p3, :cond_1f

    .line 188
    add-int v2, p2, v1

    aput-byte v0, p1, v2

    .line 187
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 191
    :cond_1f
    add-int v0, p2, p3

    return v0
.end method

.method public static parseName([BII)Ljava/lang/StringBuffer;
    .registers 7
    .param p0, "header"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 156
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 158
    .local v0, "result":Ljava/lang/StringBuffer;
    add-int v1, p1, p2

    .line 159
    .local v1, "end":I
    move v2, p1

    .line 159
    .local v2, "i":I
    :goto_8
    if-ge v2, v1, :cond_18

    .line 160
    aget-byte v3, p0, v2

    if-nez v3, :cond_f

    .line 161
    goto :goto_18

    .line 162
    :cond_f
    aget-byte v3, p0, v2

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 159
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 165
    .end local v2    # "i":I
    :cond_18
    :goto_18
    return-object v0
.end method
