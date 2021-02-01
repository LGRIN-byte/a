.class public Lorg/kamranzafar/jtar/TarEntry;
.super Ljava/lang/Object;
.source "TarEntry.java"


# instance fields
.field protected file:Ljava/io/File;

.field protected header:Lorg/kamranzafar/jtar/TarHeader;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/kamranzafar/jtar/TarEntry;->file:Ljava/io/File;

    .line 33
    new-instance v0, Lorg/kamranzafar/jtar/TarHeader;

    invoke-direct {v0}, Lorg/kamranzafar/jtar/TarHeader;-><init>()V

    iput-object v0, p0, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .registers 3
    .param p1, "file"    # Ljava/io/File;
    .param p2, "entryName"    # Ljava/lang/String;

    .line 37
    invoke-direct {p0}, Lorg/kamranzafar/jtar/TarEntry;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/kamranzafar/jtar/TarEntry;->file:Ljava/io/File;

    .line 39
    invoke-virtual {p0, p2}, Lorg/kamranzafar/jtar/TarEntry;->extractTarHeader(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Lorg/kamranzafar/jtar/TarHeader;)V
    .registers 3
    .param p1, "header"    # Lorg/kamranzafar/jtar/TarHeader;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/kamranzafar/jtar/TarEntry;->file:Ljava/io/File;

    .line 58
    iput-object p1, p0, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    .line 59
    return-void
.end method

.method public constructor <init>([B)V
    .registers 2
    .param p1, "headerBuf"    # [B

    .line 43
    invoke-direct {p0}, Lorg/kamranzafar/jtar/TarEntry;-><init>()V

    .line 44
    invoke-virtual {p0, p1}, Lorg/kamranzafar/jtar/TarEntry;->parseTarHeader([B)V

    .line 45
    return-void
.end method


# virtual methods
.method public computeCheckSum([B)J
    .registers 7
    .param p1, "buf"    # [B

    .line 183
    const-wide/16 v0, 0x0

    .line 185
    .local v0, "sum":J
    const/4 v2, 0x0

    .line 185
    .local v2, "i":I
    :goto_3
    array-length v3, p1

    if-ge v2, v3, :cond_f

    .line 186
    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    add-long/2addr v0, v3

    .line 185
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 189
    .end local v2    # "i":I
    :cond_f
    return-wide v0
.end method

.method public equals(Lorg/kamranzafar/jtar/TarEntry;)Z
    .registers 4
    .param p1, "it"    # Lorg/kamranzafar/jtar/TarEntry;

    .line 62
    iget-object v0, p0, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    iget-object v0, v0, Lorg/kamranzafar/jtar/TarHeader;->name:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    iget-object v1, v1, Lorg/kamranzafar/jtar/TarHeader;->name:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public extractTarHeader(Ljava/lang/String;)V
    .registers 9
    .param p1, "entryName"    # Ljava/lang/String;

    .line 173
    iget-object v0, p0, Lorg/kamranzafar/jtar/TarEntry;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    iget-object v0, p0, Lorg/kamranzafar/jtar/TarEntry;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    div-long v4, v0, v4

    iget-object v0, p0, Lorg/kamranzafar/jtar/TarEntry;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v6

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lorg/kamranzafar/jtar/TarHeader;->createHeader(Ljava/lang/String;JJZ)Lorg/kamranzafar/jtar/TarHeader;

    move-result-object v0

    iput-object v0, p0, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    .line 174
    return-void
.end method

.method public getFile()Ljava/io/File;
    .registers 2

    .line 136
    iget-object v0, p0, Lorg/kamranzafar/jtar/TarEntry;->file:Ljava/io/File;

    return-object v0
.end method

.method public getGroupId()I
    .registers 2

    .line 95
    iget-object v0, p0, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    iget v0, v0, Lorg/kamranzafar/jtar/TarHeader;->groupId:I

    return v0
.end method

.method public getGroupName()Ljava/lang/String;
    .registers 2

    .line 111
    iget-object v0, p0, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    iget-object v0, v0, Lorg/kamranzafar/jtar/TarHeader;->groupName:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeader()Lorg/kamranzafar/jtar/TarHeader;
    .registers 2

    .line 70
    iget-object v0, p0, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    return-object v0
.end method

.method public getModTime()Ljava/util/Date;
    .registers 6

    .line 132
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    iget-wide v1, v1, Lorg/kamranzafar/jtar/TarHeader;->modTime:J

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 4

    .line 74
    iget-object v0, p0, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    iget-object v0, v0, Lorg/kamranzafar/jtar/TarHeader;->name:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    iget-object v1, v1, Lorg/kamranzafar/jtar/TarHeader;->namePrefix:Ljava/lang/StringBuffer;

    if-eqz v1, :cond_3a

    iget-object v1, p0, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    iget-object v1, v1, Lorg/kamranzafar/jtar/TarHeader;->namePrefix:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3a

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    iget-object v2, v2, Lorg/kamranzafar/jtar/TarHeader;->namePrefix:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 79
    :cond_3a
    return-object v0
.end method

.method public getSize()J
    .registers 3

    .line 140
    iget-object v0, p0, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    iget-wide v0, v0, Lorg/kamranzafar/jtar/TarHeader;->size:J

    return-wide v0
.end method

.method public getUserId()I
    .registers 2

    .line 87
    iget-object v0, p0, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    iget v0, v0, Lorg/kamranzafar/jtar/TarHeader;->userId:I

    return v0
.end method

.method public getUserName()Ljava/lang/String;
    .registers 2

    .line 103
    iget-object v0, p0, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    iget-object v0, v0, Lorg/kamranzafar/jtar/TarHeader;->userName:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isDescendent(Lorg/kamranzafar/jtar/TarEntry;)Z
    .registers 4
    .param p1, "desc"    # Lorg/kamranzafar/jtar/TarEntry;

    .line 66
    iget-object v0, p1, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    iget-object v0, v0, Lorg/kamranzafar/jtar/TarHeader;->name:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    iget-object v1, v1, Lorg/kamranzafar/jtar/TarHeader;->name:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isDirectory()Z
    .registers 4

    .line 153
    iget-object v0, p0, Lorg/kamranzafar/jtar/TarEntry;->file:Ljava/io/File;

    if-eqz v0, :cond_b

    .line 154
    iget-object v0, p0, Lorg/kamranzafar/jtar/TarEntry;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    return v0

    .line 156
    :cond_b
    iget-object v0, p0, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    if-eqz v0, :cond_2a

    .line 157
    iget-object v0, p0, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    iget-byte v0, v0, Lorg/kamranzafar/jtar/TarHeader;->linkFlag:B

    const/16 v1, 0x35

    const/4 v2, 0x1

    if-ne v0, v1, :cond_19

    .line 158
    return v2

    .line 160
    :cond_19
    iget-object v0, p0, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    iget-object v0, v0, Lorg/kamranzafar/jtar/TarHeader;->name:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 161
    return v2

    .line 164
    :cond_2a
    const/4 v0, 0x0

    return v0
.end method

.method public parseTarHeader([B)V
    .registers 9
    .param p1, "bh"    # [B

    .line 239
    const/4 v0, 0x0

    .line 241
    .local v0, "offset":I
    iget-object v1, p0, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    const/16 v2, 0x64

    invoke-static {p1, v0, v2}, Lorg/kamranzafar/jtar/TarHeader;->parseName([BII)Ljava/lang/StringBuffer;

    move-result-object v3

    iput-object v3, v1, Lorg/kamranzafar/jtar/TarHeader;->name:Ljava/lang/StringBuffer;

    .line 242
    add-int/2addr v0, v2

    .line 244
    iget-object v1, p0, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    const/16 v3, 0x8

    invoke-static {p1, v0, v3}, Lorg/kamranzafar/jtar/Octal;->parseOctal([BII)J

    move-result-wide v4

    long-to-int v4, v4

    iput v4, v1, Lorg/kamranzafar/jtar/TarHeader;->mode:I

    .line 245
    add-int/2addr v0, v3

    .line 247
    iget-object v1, p0, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    invoke-static {p1, v0, v3}, Lorg/kamranzafar/jtar/Octal;->parseOctal([BII)J

    move-result-wide v4

    long-to-int v4, v4

    iput v4, v1, Lorg/kamranzafar/jtar/TarHeader;->userId:I

    .line 248
    add-int/2addr v0, v3

    .line 250
    iget-object v1, p0, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    invoke-static {p1, v0, v3}, Lorg/kamranzafar/jtar/Octal;->parseOctal([BII)J

    move-result-wide v4

    long-to-int v4, v4

    iput v4, v1, Lorg/kamranzafar/jtar/TarHeader;->groupId:I

    .line 251
    add-int/2addr v0, v3

    .line 253
    iget-object v1, p0, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    const/16 v4, 0xc

    invoke-static {p1, v0, v4}, Lorg/kamranzafar/jtar/Octal;->parseOctal([BII)J

    move-result-wide v5

    iput-wide v5, v1, Lorg/kamranzafar/jtar/TarHeader;->size:J

    .line 254
    add-int/2addr v0, v4

    .line 256
    iget-object v1, p0, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    invoke-static {p1, v0, v4}, Lorg/kamranzafar/jtar/Octal;->parseOctal([BII)J

    move-result-wide v5

    iput-wide v5, v1, Lorg/kamranzafar/jtar/TarHeader;->modTime:J

    .line 257
    add-int/2addr v0, v4

    .line 259
    iget-object v1, p0, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    invoke-static {p1, v0, v3}, Lorg/kamranzafar/jtar/Octal;->parseOctal([BII)J

    move-result-wide v4

    long-to-int v4, v4

    iput v4, v1, Lorg/kamranzafar/jtar/TarHeader;->checkSum:I

    .line 260
    add-int/2addr v0, v3

    .line 262
    iget-object v1, p0, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    add-int/lit8 v4, v0, 0x1

    .line 262
    .local v4, "offset":I
    aget-byte v0, p1, v0

    .line 262
    .end local v0    # "offset":I
    iput-byte v0, v1, Lorg/kamranzafar/jtar/TarHeader;->linkFlag:B

    .line 264
    iget-object v0, p0, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    invoke-static {p1, v4, v2}, Lorg/kamranzafar/jtar/TarHeader;->parseName([BII)Ljava/lang/StringBuffer;

    move-result-object v1

    iput-object v1, v0, Lorg/kamranzafar/jtar/TarHeader;->linkName:Ljava/lang/StringBuffer;

    .line 265
    add-int/2addr v4, v2

    .line 267
    iget-object v0, p0, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    invoke-static {p1, v4, v3}, Lorg/kamranzafar/jtar/TarHeader;->parseName([BII)Ljava/lang/StringBuffer;

    move-result-object v1

    iput-object v1, v0, Lorg/kamranzafar/jtar/TarHeader;->magic:Ljava/lang/StringBuffer;

    .line 268
    add-int/2addr v4, v3

    .line 270
    iget-object v0, p0, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    const/16 v1, 0x20

    invoke-static {p1, v4, v1}, Lorg/kamranzafar/jtar/TarHeader;->parseName([BII)Ljava/lang/StringBuffer;

    move-result-object v2

    iput-object v2, v0, Lorg/kamranzafar/jtar/TarHeader;->userName:Ljava/lang/StringBuffer;

    .line 271
    add-int/2addr v4, v1

    .line 273
    iget-object v0, p0, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    invoke-static {p1, v4, v1}, Lorg/kamranzafar/jtar/TarHeader;->parseName([BII)Ljava/lang/StringBuffer;

    move-result-object v2

    iput-object v2, v0, Lorg/kamranzafar/jtar/TarHeader;->groupName:Ljava/lang/StringBuffer;

    .line 274
    add-int/2addr v4, v1

    .line 276
    iget-object v0, p0, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    invoke-static {p1, v4, v3}, Lorg/kamranzafar/jtar/Octal;->parseOctal([BII)J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, v0, Lorg/kamranzafar/jtar/TarHeader;->devMajor:I

    .line 277
    add-int/2addr v4, v3

    .line 279
    iget-object v0, p0, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    invoke-static {p1, v4, v3}, Lorg/kamranzafar/jtar/Octal;->parseOctal([BII)J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, v0, Lorg/kamranzafar/jtar/TarHeader;->devMinor:I

    .line 280
    add-int/2addr v4, v3

    .line 282
    iget-object v0, p0, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    const/16 v1, 0x9b

    invoke-static {p1, v4, v1}, Lorg/kamranzafar/jtar/TarHeader;->parseName([BII)Ljava/lang/StringBuffer;

    move-result-object v1

    iput-object v1, v0, Lorg/kamranzafar/jtar/TarHeader;->namePrefix:Ljava/lang/StringBuffer;

    .line 283
    return-void
.end method

.method public setGroupId(I)V
    .registers 3
    .param p1, "groupId"    # I

    .line 99
    iget-object v0, p0, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    iput p1, v0, Lorg/kamranzafar/jtar/TarHeader;->groupId:I

    .line 100
    return-void
.end method

.method public setGroupName(Ljava/lang/String;)V
    .registers 4
    .param p1, "groupName"    # Ljava/lang/String;

    .line 115
    iget-object v0, p0, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lorg/kamranzafar/jtar/TarHeader;->groupName:Ljava/lang/StringBuffer;

    .line 116
    return-void
.end method

.method public setIds(II)V
    .registers 3
    .param p1, "userId"    # I
    .param p2, "groupId"    # I

    .line 119
    invoke-virtual {p0, p1}, Lorg/kamranzafar/jtar/TarEntry;->setUserId(I)V

    .line 120
    invoke-virtual {p0, p2}, Lorg/kamranzafar/jtar/TarEntry;->setGroupId(I)V

    .line 121
    return-void
.end method

.method public setModTime(J)V
    .registers 6
    .param p1, "time"    # J

    .line 124
    iget-object v0, p0, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    const-wide/16 v1, 0x3e8

    div-long v1, p1, v1

    iput-wide v1, v0, Lorg/kamranzafar/jtar/TarHeader;->modTime:J

    .line 125
    return-void
.end method

.method public setModTime(Ljava/util/Date;)V
    .registers 7
    .param p1, "time"    # Ljava/util/Date;

    .line 128
    iget-object v0, p0, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    iput-wide v1, v0, Lorg/kamranzafar/jtar/TarHeader;->modTime:J

    .line 129
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 83
    iget-object v0, p0, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lorg/kamranzafar/jtar/TarHeader;->name:Ljava/lang/StringBuffer;

    .line 84
    return-void
.end method

.method public setSize(J)V
    .registers 4
    .param p1, "size"    # J

    .line 144
    iget-object v0, p0, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    iput-wide p1, v0, Lorg/kamranzafar/jtar/TarHeader;->size:J

    .line 145
    return-void
.end method

.method public setUserId(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 91
    iget-object v0, p0, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    iput p1, v0, Lorg/kamranzafar/jtar/TarHeader;->userId:I

    .line 92
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .registers 4
    .param p1, "userName"    # Ljava/lang/String;

    .line 107
    iget-object v0, p0, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lorg/kamranzafar/jtar/TarHeader;->userName:Ljava/lang/StringBuffer;

    .line 108
    return-void
.end method

.method public writeEntryHeader([B)V
    .registers 12
    .param p1, "outbuf"    # [B

    .line 198
    const/4 v0, 0x0

    .line 200
    .local v0, "offset":I
    iget-object v1, p0, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    iget-object v1, v1, Lorg/kamranzafar/jtar/TarHeader;->name:Ljava/lang/StringBuffer;

    const/16 v2, 0x64

    invoke-static {v1, p1, v0, v2}, Lorg/kamranzafar/jtar/TarHeader;->getNameBytes(Ljava/lang/StringBuffer;[BII)I

    move-result v0

    .line 201
    iget-object v1, p0, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    iget v1, v1, Lorg/kamranzafar/jtar/TarHeader;->mode:I

    int-to-long v3, v1

    const/16 v1, 0x8

    invoke-static {v3, v4, p1, v0, v1}, Lorg/kamranzafar/jtar/Octal;->getOctalBytes(J[BII)I

    move-result v0

    .line 202
    iget-object v3, p0, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    iget v3, v3, Lorg/kamranzafar/jtar/TarHeader;->userId:I

    int-to-long v3, v3

    invoke-static {v3, v4, p1, v0, v1}, Lorg/kamranzafar/jtar/Octal;->getOctalBytes(J[BII)I

    move-result v0

    .line 203
    iget-object v3, p0, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    iget v3, v3, Lorg/kamranzafar/jtar/TarHeader;->groupId:I

    int-to-long v3, v3

    invoke-static {v3, v4, p1, v0, v1}, Lorg/kamranzafar/jtar/Octal;->getOctalBytes(J[BII)I

    move-result v0

    .line 205
    iget-object v3, p0, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    iget-wide v3, v3, Lorg/kamranzafar/jtar/TarHeader;->size:J

    .line 207
    .local v3, "size":J
    const/16 v5, 0xc

    invoke-static {v3, v4, p1, v0, v5}, Lorg/kamranzafar/jtar/Octal;->getLongOctalBytes(J[BII)I

    move-result v0

    .line 208
    iget-object v6, p0, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    iget-wide v6, v6, Lorg/kamranzafar/jtar/TarHeader;->modTime:J

    invoke-static {v6, v7, p1, v0, v5}, Lorg/kamranzafar/jtar/Octal;->getLongOctalBytes(J[BII)I

    move-result v0

    .line 210
    move v5, v0

    .line 211
    .local v5, "csOffset":I
    const/4 v6, 0x0

    move v7, v0

    const/4 v0, 0x0

    .line 211
    .local v0, "c":I
    .local v7, "offset":I
    :goto_3e
    const/16 v8, 0x20

    if-ge v0, v1, :cond_4a

    .line 212
    add-int/lit8 v9, v7, 0x1

    .line 212
    .local v9, "offset":I
    aput-byte v8, p1, v7

    .line 211
    .end local v7    # "offset":I
    add-int/lit8 v0, v0, 0x1

    move v7, v9

    goto :goto_3e

    .line 214
    .end local v0    # "c":I
    .end local v9    # "offset":I
    .restart local v7    # "offset":I
    :cond_4a
    add-int/lit8 v0, v7, 0x1

    .line 214
    .local v0, "offset":I
    iget-object v9, p0, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    iget-byte v9, v9, Lorg/kamranzafar/jtar/TarHeader;->linkFlag:B

    aput-byte v9, p1, v7

    .line 216
    .end local v7    # "offset":I
    iget-object v7, p0, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    iget-object v7, v7, Lorg/kamranzafar/jtar/TarHeader;->linkName:Ljava/lang/StringBuffer;

    invoke-static {v7, p1, v0, v2}, Lorg/kamranzafar/jtar/TarHeader;->getNameBytes(Ljava/lang/StringBuffer;[BII)I

    move-result v0

    .line 217
    iget-object v2, p0, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    iget-object v2, v2, Lorg/kamranzafar/jtar/TarHeader;->magic:Ljava/lang/StringBuffer;

    invoke-static {v2, p1, v0, v1}, Lorg/kamranzafar/jtar/TarHeader;->getNameBytes(Ljava/lang/StringBuffer;[BII)I

    move-result v0

    .line 218
    iget-object v2, p0, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    iget-object v2, v2, Lorg/kamranzafar/jtar/TarHeader;->userName:Ljava/lang/StringBuffer;

    invoke-static {v2, p1, v0, v8}, Lorg/kamranzafar/jtar/TarHeader;->getNameBytes(Ljava/lang/StringBuffer;[BII)I

    move-result v0

    .line 219
    iget-object v2, p0, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    iget-object v2, v2, Lorg/kamranzafar/jtar/TarHeader;->groupName:Ljava/lang/StringBuffer;

    invoke-static {v2, p1, v0, v8}, Lorg/kamranzafar/jtar/TarHeader;->getNameBytes(Ljava/lang/StringBuffer;[BII)I

    move-result v0

    .line 220
    iget-object v2, p0, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    iget v2, v2, Lorg/kamranzafar/jtar/TarHeader;->devMajor:I

    int-to-long v7, v2

    invoke-static {v7, v8, p1, v0, v1}, Lorg/kamranzafar/jtar/Octal;->getOctalBytes(J[BII)I

    move-result v0

    .line 221
    iget-object v2, p0, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    iget v2, v2, Lorg/kamranzafar/jtar/TarHeader;->devMinor:I

    int-to-long v7, v2

    invoke-static {v7, v8, p1, v0, v1}, Lorg/kamranzafar/jtar/Octal;->getOctalBytes(J[BII)I

    move-result v0

    .line 222
    iget-object v2, p0, Lorg/kamranzafar/jtar/TarEntry;->header:Lorg/kamranzafar/jtar/TarHeader;

    iget-object v2, v2, Lorg/kamranzafar/jtar/TarHeader;->namePrefix:Ljava/lang/StringBuffer;

    const/16 v7, 0x9b

    invoke-static {v2, p1, v0, v7}, Lorg/kamranzafar/jtar/TarHeader;->getNameBytes(Ljava/lang/StringBuffer;[BII)I

    move-result v0

    .line 224
    :goto_8e
    array-length v2, p1

    if-ge v0, v2, :cond_97

    .line 225
    add-int/lit8 v2, v0, 0x1

    .line 225
    .local v2, "offset":I
    aput-byte v6, p1, v0

    .line 224
    .end local v0    # "offset":I
    move v0, v2

    goto :goto_8e

    .line 227
    .end local v2    # "offset":I
    .restart local v0    # "offset":I
    :cond_97
    invoke-virtual {p0, p1}, Lorg/kamranzafar/jtar/TarEntry;->computeCheckSum([B)J

    move-result-wide v6

    .line 229
    .local v6, "checkSum":J
    invoke-static {v6, v7, p1, v5, v1}, Lorg/kamranzafar/jtar/Octal;->getCheckSumOctalBytes(J[BII)I

    .line 230
    return-void
.end method
