# classes2.dex

.class public Landroid/net/netstats/NetworkStatsDataMigrationUtils;
.super Ljava/lang/Object;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/netstats/NetworkStatsDataMigrationUtils$IdentitySetVersion;,
        Landroid/net/netstats/NetworkStatsDataMigrationUtils$HistoryVersion;,
        Landroid/net/netstats/NetworkStatsDataMigrationUtils$CollectionVersion;,
        Landroid/net/netstats/NetworkStatsDataMigrationUtils$Prefix;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x2000

.field private static final FILE_MAGIC:I = 0x414e4554

.field public static final PREFIX_UID:Ljava/lang/String; = "uid"

.field public static final PREFIX_UID_TAG:Ljava/lang/String; = "uid_tag"

.field public static final PREFIX_XT:Ljava/lang/String; = "xt"

.field private static final sPrefixLegacyFileNameMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/net/netstats/NetworkStatsDataMigrationUtils$1;

    invoke-direct {v0}, Landroid/net/netstats/NetworkStatsDataMigrationUtils$1;-><init>()V

    sput-object v0, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->sPrefixLegacyFileNameMap:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCollapsedLegacyType(I)I
    .registers 2

    packed-switch p0, :pswitch_data_6

    :pswitch_3  #0x1, 0x6, 0x7, 0x8, 0x9, 0xd
    return p0

    :pswitch_4  #0x0, 0x2, 0x3, 0x4, 0x5, 0xa, 0xb, 0xc, 0xe, 0xf
    const/4 v0, 0x0

    return v0

    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_4  #00000000
        :pswitch_3  #00000001
        :pswitch_4  #00000002
        :pswitch_4  #00000003
        :pswitch_4  #00000004
        :pswitch_4  #00000005
        :pswitch_3  #00000006
        :pswitch_3  #00000007
        :pswitch_3  #00000008
        :pswitch_3  #00000009
        :pswitch_4  #0000000a
        :pswitch_4  #0000000b
        :pswitch_4  #0000000c
        :pswitch_3  #0000000d
        :pswitch_4  #0000000e
        :pswitch_4  #0000000f
    .end packed-switch
.end method

.method private static getLegacyBinFileForPrefix(Ljava/lang/String;)Ljava/io/File;
    .registers 4

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->getPlatformSystemDir()Ljava/io/File;

    move-result-object v1

    sget-object v2, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->sPrefixLegacyFileNameMap:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static getPlatformBaseDir()Ljava/io/File;
    .registers 3

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->getPlatformSystemDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "netstats"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    return-object v0
.end method

.method private static getPlatformFileListForPrefix(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->getPlatformBaseDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_16

    return-object v0

    :cond_16
    invoke-static {v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1b
    if-ge v4, v3, :cond_44

    aget-object v5, v2, v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_39

    goto :goto_41

    :cond_39
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_41
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    :cond_44
    return-object v0
.end method

.method private static getPlatformSystemDir()Ljava/io/File;
    .registers 3

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static readFullLongArray(Ljava/io/DataInput;)[J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    if-ltz v0, :cond_16

    new-array v1, v0, [J

    const/4 v2, 0x0

    :goto_9
    array-length v3, v1

    if-ge v2, v3, :cond_15

    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v3

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_15
    return-object v1

    :cond_16
    new-instance v1, Ljava/net/ProtocolException;

    const-string v2, "negative array size"

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static readLegacyUid(Landroid/net/NetworkStatsCollection$Builder;Ljava/io/DataInput;Z)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    const v1, 0x414e4554

    if-ne v0, v1, :cond_6a

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v1

    packed-switch v1, :pswitch_data_86

    new-instance v2, Ljava/net/ProtocolException;

    goto :goto_53

    :pswitch_13  #0x3, 0x4
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v2

    const/4 v3, 0x0

    :goto_18
    if-ge v3, v2, :cond_4f

    invoke-static {p1}, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->readPlatformNetworkIdentitySet(Ljava/io/DataInput;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v5

    const/4 v6, 0x0

    :goto_23
    if-ge v6, v5, :cond_4c

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v7

    const/4 v8, 0x4

    const/4 v9, 0x0

    if-lt v1, v8, :cond_32

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v8

    goto :goto_33

    :cond_32
    move v8, v9

    :goto_33
    nop

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v10

    new-instance v11, Landroid/net/NetworkStatsCollection$Key;

    invoke-direct {v11, v4, v7, v8, v10}, Landroid/net/NetworkStatsCollection$Key;-><init>(Ljava/util/Set;III)V

    invoke-static {p1}, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->readPlatformHistory(Ljava/io/DataInput;)Landroid/net/NetworkStatsHistory;

    move-result-object v12

    if-nez v10, :cond_44

    const/4 v9, 0x1

    :cond_44
    if-eq v9, p2, :cond_49

    invoke-virtual {p0, v11, v12}, Landroid/net/NetworkStatsCollection$Builder;->addEntry(Landroid/net/NetworkStatsCollection$Key;Landroid/net/NetworkStatsHistory;)Landroid/net/NetworkStatsCollection$Builder;

    :cond_49
    add-int/lit8 v6, v6, 0x1

    goto :goto_23

    :cond_4c
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_4f
    goto :goto_52

    :pswitch_50  #0x2
    goto :goto_52

    :pswitch_51  #0x1
    nop

    :goto_52
    goto :goto_84

    :goto_53
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_6a
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected magic: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_83
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_83} :catch_83
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_83} :catch_83

    :catch_83
    move-exception v0

    :goto_84
    return-void

    nop

    :pswitch_data_86
    .packed-switch 0x1
        :pswitch_51  #00000001
        :pswitch_50  #00000002
        :pswitch_13  #00000003
        :pswitch_13  #00000004
    .end packed-switch
.end method

.method private static readLegacyUid(Landroid/net/NetworkStatsCollection$Builder;Ljava/io/File;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Landroid/util/AtomicFile;

    invoke-direct {v0, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_13
    invoke-static {p0, v1, p2}, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->readLegacyUid(Landroid/net/NetworkStatsCollection$Builder;Ljava/io/DataInput;Z)V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_1b

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    nop

    return-void

    :catchall_1b
    move-exception v2

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2
.end method

.method private static readOptionalString(Ljava/io/DataInput;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public static readPlatformCollection(Ljava/lang/String;J)Landroid/net/NetworkStatsCollection;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Landroid/net/NetworkStatsCollection$Builder;

    invoke-direct {v0, p1, p2}, Landroid/net/NetworkStatsCollection$Builder;-><init>(J)V

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const-string v2, "uid_tag"

    sparse-switch v1, :sswitch_data_5a

    :cond_e
    goto :goto_21

    :sswitch_f
    const-string v1, "uid"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x0

    goto :goto_22

    :sswitch_19
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_22

    :goto_21
    const/4 v1, -0x1

    :goto_22
    packed-switch v1, :pswitch_data_64

    goto :goto_37

    :pswitch_26  #0x0, 0x1
    invoke-static {p0}, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->getLegacyBinFileForPrefix(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->readLegacyUid(Landroid/net/NetworkStatsCollection$Builder;Ljava/io/File;Z)V

    :cond_37
    :goto_37
    invoke-static {p0}, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->getPlatformFileListForPrefix(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_55

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_54

    invoke-static {v0, v3}, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->readPlatformCollection(Landroid/net/NetworkStatsCollection$Builder;Ljava/io/File;)V

    :cond_54
    goto :goto_3f

    :cond_55
    invoke-virtual {v0}, Landroid/net/NetworkStatsCollection$Builder;->build()Landroid/net/NetworkStatsCollection;

    move-result-object v2

    return-object v2

    :sswitch_data_5a
    .sparse-switch
        -0x19ebf4d5 -> :sswitch_19
        0x1c450 -> :sswitch_f
    .end sparse-switch

    :pswitch_data_64
    .packed-switch 0x0
        :pswitch_26  #00000000
        :pswitch_26  #00000001
    .end packed-switch
.end method

.method public static readPlatformCollection(Landroid/net/NetworkStatsCollection$Builder;Ljava/io/DataInput;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    const v1, 0x414e4554

    if-ne v0, v1, :cond_5b

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v1

    packed-switch v1, :pswitch_data_74

    new-instance v2, Ljava/net/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unexpected version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_29  #0x10
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v2

    const/4 v3, 0x0

    :goto_2e
    if-ge v3, v2, :cond_59

    invoke-static {p1}, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->readPlatformNetworkIdentitySet(Ljava/io/DataInput;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v5

    const/4 v6, 0x0

    :goto_39
    if-ge v6, v5, :cond_56

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v7

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v8

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v9

    new-instance v10, Landroid/net/NetworkStatsCollection$Key;

    invoke-direct {v10, v4, v7, v8, v9}, Landroid/net/NetworkStatsCollection$Key;-><init>(Ljava/util/Set;III)V

    invoke-static {p1}, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->readPlatformHistory(Ljava/io/DataInput;)Landroid/net/NetworkStatsHistory;

    move-result-object v11

    invoke-virtual {p0, v10, v11}, Landroid/net/NetworkStatsCollection$Builder;->addEntry(Landroid/net/NetworkStatsCollection$Key;Landroid/net/NetworkStatsHistory;)Landroid/net/NetworkStatsCollection$Builder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_39

    :cond_56
    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    :cond_59
    nop

    return-void

    :cond_5b
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected magic: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_74
    .packed-switch 0x10
        :pswitch_29  #00000010
    .end packed-switch
.end method

.method private static readPlatformCollection(Landroid/net/NetworkStatsCollection$Builder;Ljava/io/File;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v1, Lcom/android/internal/util/FastDataInput;

    const/16 v2, 0x2000

    invoke-direct {v1, v0, v2}, Lcom/android/internal/util/FastDataInput;-><init>(Ljava/io/InputStream;I)V

    :try_start_c
    invoke-static {p0, v1}, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->readPlatformCollection(Landroid/net/NetworkStatsCollection$Builder;Ljava/io/DataInput;)V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_14

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    nop

    return-void

    :catchall_14
    move-exception v2

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2
.end method

.method private static readPlatformHistory(Ljava/io/DataInput;)Landroid/net/NetworkStatsHistory;
    .registers 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [J

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readInt()I

    move-result v1

    packed-switch v1, :pswitch_data_90

    new-instance v2, Ljava/net/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unexpected version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_23  #0x2, 0x3
    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v2

    invoke-static/range {p0 .. p0}, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->readVarLongArray(Ljava/io/DataInput;)[J

    move-result-object v4

    const/4 v5, 0x3

    if-lt v1, v5, :cond_33

    invoke-static/range {p0 .. p0}, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->readVarLongArray(Ljava/io/DataInput;)[J

    move-result-object v5

    goto :goto_36

    :cond_33
    array-length v5, v4

    new-array v5, v5, [J

    :goto_36
    move-object v0, v5

    invoke-static/range {p0 .. p0}, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->readVarLongArray(Ljava/io/DataInput;)[J

    move-result-object v5

    invoke-static/range {p0 .. p0}, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->readVarLongArray(Ljava/io/DataInput;)[J

    move-result-object v6

    invoke-static/range {p0 .. p0}, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->readVarLongArray(Ljava/io/DataInput;)[J

    move-result-object v7

    invoke-static/range {p0 .. p0}, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->readVarLongArray(Ljava/io/DataInput;)[J

    move-result-object v8

    invoke-static/range {p0 .. p0}, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->readVarLongArray(Ljava/io/DataInput;)[J

    move-result-object v9

    array-length v10, v4

    goto :goto_68

    :pswitch_4d  #0x1
    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v2

    invoke-static/range {p0 .. p0}, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->readFullLongArray(Ljava/io/DataInput;)[J

    move-result-object v4

    invoke-static/range {p0 .. p0}, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->readFullLongArray(Ljava/io/DataInput;)[J

    move-result-object v5

    array-length v6, v4

    new-array v6, v6, [J

    invoke-static/range {p0 .. p0}, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->readFullLongArray(Ljava/io/DataInput;)[J

    move-result-object v7

    array-length v8, v4

    new-array v8, v8, [J

    array-length v9, v4

    new-array v9, v9, [J

    array-length v10, v4

    nop

    :goto_68
    new-instance v11, Landroid/net/NetworkStatsHistory$Builder;

    invoke-direct {v11, v2, v3, v10}, Landroid/net/NetworkStatsHistory$Builder;-><init>(JI)V

    const/4 v12, 0x0

    :goto_6e
    if-ge v12, v10, :cond_8b

    new-instance v28, Landroid/net/NetworkStatsHistory$Entry;

    aget-wide v14, v4, v12

    aget-wide v16, v0, v12

    aget-wide v18, v5, v12

    aget-wide v20, v6, v12

    aget-wide v22, v7, v12

    aget-wide v24, v8, v12

    aget-wide v26, v9, v12

    move-object/from16 v13, v28

    invoke-direct/range {v13 .. v27}, Landroid/net/NetworkStatsHistory$Entry;-><init>(JJJJJJJ)V

    invoke-virtual {v11, v13}, Landroid/net/NetworkStatsHistory$Builder;->addEntry(Landroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Builder;

    add-int/lit8 v12, v12, 0x1

    goto :goto_6e

    :cond_8b
    invoke-virtual {v11}, Landroid/net/NetworkStatsHistory$Builder;->build()Landroid/net/NetworkStatsHistory;

    move-result-object v12

    return-object v12

    :pswitch_data_90
    .packed-switch 0x1
        :pswitch_4d  #00000001
        :pswitch_23  #00000002
        :pswitch_23  #00000003
    .end packed-switch
.end method

.method private static readPlatformNetworkIdentitySet(Ljava/io/DataInput;)Ljava/util/Set;
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataInput;",
            ")",
            "Ljava/util/Set<",
            "Landroid/net/NetworkIdentity;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readInt()I

    move-result v1

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v1, :cond_97

    const/4 v4, 0x1

    if-gt v0, v4, :cond_16

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readInt()I

    :cond_16
    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readInt()I

    move-result v5

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readInt()I

    move-result v6

    invoke-static/range {p0 .. p0}, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->readOptionalString(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    if-lt v0, v8, :cond_2a

    invoke-static/range {p0 .. p0}, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->readOptionalString(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v8

    goto :goto_2b

    :cond_2a
    const/4 v8, 0x0

    :goto_2b
    const/4 v9, 0x2

    if-lt v0, v9, :cond_33

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readBoolean()Z

    move-result v9

    goto :goto_34

    :cond_33
    const/4 v9, 0x0

    :goto_34
    const/4 v10, 0x4

    if-lt v0, v10, :cond_3c

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readBoolean()Z

    move-result v4

    goto :goto_40

    :cond_3c
    if-nez v5, :cond_3f

    goto :goto_40

    :cond_3f
    const/4 v4, 0x0

    :goto_40
    const/4 v10, 0x5

    if-lt v0, v10, :cond_48

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readBoolean()Z

    move-result v10

    goto :goto_49

    :cond_48
    const/4 v10, 0x1

    :goto_49
    const/4 v11, 0x6

    if-lt v0, v11, :cond_51

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readInt()I

    move-result v11

    goto :goto_52

    :cond_51
    const/4 v11, 0x0

    :goto_52
    const/4 v12, 0x7

    if-lt v0, v12, :cond_5a

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readInt()I

    move-result v12

    goto :goto_5b

    :cond_5a
    const/4 v12, -0x1

    :goto_5b
    invoke-static {v5}, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->getCollapsedLegacyType(I)I

    move-result v13

    new-instance v14, Landroid/net/NetworkIdentity$Builder;

    invoke-direct {v14}, Landroid/net/NetworkIdentity$Builder;-><init>()V

    invoke-virtual {v14, v13}, Landroid/net/NetworkIdentity$Builder;->setType(I)Landroid/net/NetworkIdentity$Builder;

    move-result-object v14

    invoke-virtual {v14, v7}, Landroid/net/NetworkIdentity$Builder;->setSubscriberId(Ljava/lang/String;)Landroid/net/NetworkIdentity$Builder;

    move-result-object v14

    invoke-virtual {v14, v8}, Landroid/net/NetworkIdentity$Builder;->setWifiNetworkKey(Ljava/lang/String;)Landroid/net/NetworkIdentity$Builder;

    move-result-object v14

    invoke-virtual {v14, v9}, Landroid/net/NetworkIdentity$Builder;->setRoaming(Z)Landroid/net/NetworkIdentity$Builder;

    move-result-object v14

    invoke-virtual {v14, v4}, Landroid/net/NetworkIdentity$Builder;->setMetered(Z)Landroid/net/NetworkIdentity$Builder;

    move-result-object v14

    invoke-virtual {v14, v10}, Landroid/net/NetworkIdentity$Builder;->setDefaultNetwork(Z)Landroid/net/NetworkIdentity$Builder;

    move-result-object v14

    invoke-virtual {v14, v11}, Landroid/net/NetworkIdentity$Builder;->setOemManaged(I)Landroid/net/NetworkIdentity$Builder;

    move-result-object v14

    invoke-virtual {v14, v12}, Landroid/net/NetworkIdentity$Builder;->setSubId(I)Landroid/net/NetworkIdentity$Builder;

    move-result-object v14

    if-nez v5, :cond_8c

    const/4 v15, -0x1

    if-eq v6, v15, :cond_8c

    invoke-virtual {v14, v6}, Landroid/net/NetworkIdentity$Builder;->setRatType(I)Landroid/net/NetworkIdentity$Builder;

    :cond_8c
    invoke-virtual {v14}, Landroid/net/NetworkIdentity$Builder;->build()Landroid/net/NetworkIdentity;

    move-result-object v15

    invoke-interface {v2, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_e

    :cond_97
    return-object v2
.end method

.method private static readVarLong(Ljava/io/DataInput;)J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    :goto_3
    const/16 v3, 0x40

    if-ge v0, v3, :cond_19

    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v0

    or-long/2addr v1, v4

    and-int/lit16 v4, v3, 0x80

    if-nez v4, :cond_15

    return-wide v1

    :cond_15
    nop

    add-int/lit8 v0, v0, 0x7

    goto :goto_3

    :cond_19
    new-instance v3, Ljava/net/ProtocolException;

    const-string v4, "malformed var long"

    invoke-direct {v3, v4}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static readVarLongArray(Ljava/io/DataInput;)[J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    const/4 v1, 0x0

    return-object v1

    :cond_9
    if-ltz v0, :cond_1b

    new-array v1, v0, [J

    const/4 v2, 0x0

    :goto_e
    array-length v3, v1

    if-ge v2, v3, :cond_1a

    invoke-static {p0}, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->readVarLong(Ljava/io/DataInput;)J

    move-result-wide v3

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_1a
    return-object v1

    :cond_1b
    new-instance v1, Ljava/net/ProtocolException;

    const-string v2, "negative array size"

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
