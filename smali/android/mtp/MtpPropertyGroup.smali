# classes2.dex

.class Landroid/mtp/MtpPropertyGroup;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/mtp/MtpPropertyGroup$Property;
    }
.end annotation


# static fields
.field private static final PATH_WHERE:Ljava/lang/String; = "_data=?"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mColumns:[Ljava/lang/String;

.field private final mProperties:[Landroid/mtp/MtpPropertyGroup$Property;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Landroid/mtp/MtpPropertyGroup;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/mtp/MtpPropertyGroup;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([I)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v2, v0, [Landroid/mtp/MtpPropertyGroup$Property;

    iput-object v2, p0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v0, :cond_22

    iget-object v3, p0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    aget v4, p1, v2

    invoke-direct {p0, v4, v1}, Landroid/mtp/MtpPropertyGroup;->createProperty(ILjava/util/ArrayList;)Landroid/mtp/MtpPropertyGroup$Property;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_22
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    iput-object v2, p0, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    const/4 v2, 0x0

    :goto_2b
    if-ge v2, v0, :cond_3a

    iget-object v3, p0, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    :cond_3a
    return-void
.end method

.method private createProperty(ILjava/util/ArrayList;)Landroid/mtp/MtpPropertyGroup$Property;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/mtp/MtpPropertyGroup$Property;"
        }
    .end annotation

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_90

    const/4 v1, 0x0

    sget-object v2, Landroid/mtp/MtpPropertyGroup;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unsupported property "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_78

    :sswitch_1f
    const/4 v1, 0x6

    goto/16 :goto_78

    :sswitch_22
    const/4 v1, 0x4

    goto :goto_78

    :sswitch_24
    const v1, 0xffff

    goto :goto_78

    :sswitch_28
    const-string v0, "album_artist"

    const v1, 0xffff

    goto :goto_78

    :sswitch_2e
    const-string v0, "album"

    const v1, 0xffff

    goto :goto_78

    :sswitch_34
    const-string v0, "year"

    const v1, 0xffff

    goto :goto_78

    :sswitch_3a
    const-string v0, "composer"

    const v1, 0xffff

    goto :goto_78

    :sswitch_40
    const-string v0, "genre"

    const v1, 0xffff

    goto :goto_78

    :sswitch_46
    const-string v0, "track"

    const/4 v1, 0x4

    goto :goto_78

    :sswitch_4a
    const-string v0, "duration"

    const/4 v1, 0x6

    goto :goto_78

    :sswitch_4e
    const v1, 0xffff

    goto :goto_78

    :sswitch_52
    const-string v0, "description"

    const v1, 0xffff

    goto :goto_78

    :sswitch_58
    const-string v0, "artist"

    const v1, 0xffff

    goto :goto_78

    :sswitch_5e
    const v1, 0xffff

    goto :goto_78

    :sswitch_62
    const/16 v1, 0xa

    goto :goto_78

    :sswitch_65
    const/4 v1, 0x6

    goto :goto_78

    :sswitch_67
    const v1, 0xffff

    goto :goto_78

    :sswitch_6b
    const v1, 0xffff

    goto :goto_78

    :sswitch_6f
    const/16 v1, 0x8

    goto :goto_78

    :sswitch_72
    const/4 v1, 0x4

    goto :goto_78

    :sswitch_74
    const/4 v1, 0x4

    goto :goto_78

    :sswitch_76
    const/4 v1, 0x6

    nop

    :goto_78
    if-eqz v0, :cond_89

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Landroid/mtp/MtpPropertyGroup$Property;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-direct {v2, p0, p1, v1, v3}, Landroid/mtp/MtpPropertyGroup$Property;-><init>(Landroid/mtp/MtpPropertyGroup;III)V

    return-object v2

    :cond_89
    new-instance v2, Landroid/mtp/MtpPropertyGroup$Property;

    const/4 v3, -0x1

    invoke-direct {v2, p0, p1, v1, v3}, Landroid/mtp/MtpPropertyGroup$Property;-><init>(Landroid/mtp/MtpPropertyGroup;III)V

    return-object v2

    :sswitch_data_90
    .sparse-switch
        0xdc01 -> :sswitch_76
        0xdc02 -> :sswitch_74
        0xdc03 -> :sswitch_72
        0xdc04 -> :sswitch_6f
        0xdc07 -> :sswitch_6b
        0xdc09 -> :sswitch_67
        0xdc0b -> :sswitch_65
        0xdc41 -> :sswitch_62
        0xdc44 -> :sswitch_5e
        0xdc46 -> :sswitch_58
        0xdc48 -> :sswitch_52
        0xdc4e -> :sswitch_4e
        0xdc89 -> :sswitch_4a
        0xdc8b -> :sswitch_46
        0xdc8c -> :sswitch_40
        0xdc96 -> :sswitch_3a
        0xdc99 -> :sswitch_34
        0xdc9a -> :sswitch_2e
        0xdc9b -> :sswitch_28
        0xdce0 -> :sswitch_24
        0xde92 -> :sswitch_22
        0xde93 -> :sswitch_1f
        0xde94 -> :sswitch_22
        0xde99 -> :sswitch_1f
        0xde9a -> :sswitch_1f
    .end sparse-switch
.end method

.method private native format_date_time(J)Ljava/lang/String;
.end method


# virtual methods
.method public getPropertyList(Landroid/content/ContentProviderClient;Ljava/lang/String;Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpPropertyList;)I
    .registers 28

    move-object/from16 v1, p0

    move-object/from16 v8, p4

    const/4 v0, 0x0

    invoke-virtual/range {p3 .. p3}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v9

    invoke-virtual/range {p3 .. p3}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v2

    invoke-interface {v2}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v1, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    array-length v12, v11

    const/4 v13, 0x0

    move-object v2, v0

    move v14, v13

    :goto_17
    if-ge v14, v12, :cond_1b3

    aget-object v15, v11, v14

    iget v0, v15, Landroid/mtp/MtpPropertyGroup$Property;->column:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_69

    if-nez v2, :cond_69

    :try_start_22
    invoke-virtual/range {p3 .. p3}, Landroid/mtp/MtpStorageManager$MtpObject;->getFormat()I

    move-result v0
    :try_end_26
    .catch Ljava/lang/IllegalArgumentException; {:try_start_22 .. :try_end_26} :catch_62
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_26} :catch_56

    move-object/from16 v6, p2

    :try_start_28
    invoke-static {v0, v6}, Landroid/mtp/MtpDatabase;->getObjectPropertiesUri(ILjava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    iget-object v0, v1, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    const-string v19, "_data=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    aput-object v10, v3, v13

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v16, p1

    move-object/from16 v18, v0

    move-object/from16 v20, v3

    invoke-virtual/range {v16 .. v22}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    move-object v2, v0

    if-eqz v2, :cond_50

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_50

    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_28 .. :try_end_4f} :catch_54
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_4f} :catch_52

    const/4 v2, 0x0

    :cond_50
    move-object v0, v2

    goto :goto_6c

    :catch_52
    move-exception v0

    goto :goto_59

    :catch_54
    move-exception v0

    goto :goto_65

    :catch_56
    move-exception v0

    move-object/from16 v6, p2

    :goto_59
    sget-object v3, Landroid/mtp/MtpPropertyGroup;->TAG:Ljava/lang/String;

    const-string v4, "Mediaprovider lookup failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    goto :goto_6c

    :catch_62
    move-exception v0

    move-object/from16 v6, p2

    :goto_65
    const v3, 0xa801

    return v3

    :cond_69
    move-object/from16 v6, p2

    move-object v0, v2

    :goto_6c
    iget v2, v15, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    sparse-switch v2, :sswitch_data_1bc

    iget v2, v15, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    sparse-switch v2, :sswitch_data_206

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_1a0

    iget v4, v15, Landroid/mtp/MtpPropertyGroup$Property;->column:I

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    move-wide/from16 v16, v2

    goto/16 :goto_1a2

    :sswitch_84
    iget v4, v15, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    const/4 v5, 0x6

    const-wide/16 v16, 0x0

    move-object/from16 v2, p4

    move v3, v9

    move-wide/from16 v6, v16

    invoke-virtual/range {v2 .. v7}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_1ae

    :sswitch_93
    iget v4, v15, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    const/4 v5, 0x4

    const-wide/16 v6, 0x0

    move-object/from16 v2, p4

    move v3, v9

    invoke-virtual/range {v2 .. v7}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_1ae

    :sswitch_a0
    const/4 v2, 0x0

    if-eqz v0, :cond_a9

    iget v3, v15, Landroid/mtp/MtpPropertyGroup$Property;->column:I

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    :cond_a9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "0101T000000"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, v15, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    invoke-virtual {v8, v9, v4, v3}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_1ae

    :sswitch_c7
    const/4 v2, 0x0

    if-eqz v0, :cond_d2

    iget v3, v15, Landroid/mtp/MtpPropertyGroup$Property;->column:I

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move v6, v2

    goto :goto_d3

    :cond_d2
    move v6, v2

    :goto_d3
    iget v4, v15, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    const/4 v5, 0x4

    rem-int/lit16 v2, v6, 0x3e8

    int-to-long v2, v2

    move-wide/from16 v16, v2

    move-object/from16 v2, p4

    move v3, v9

    move/from16 v18, v6

    move-wide/from16 v6, v16

    invoke-virtual/range {v2 .. v7}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_1ae

    :sswitch_e7
    invoke-virtual/range {p3 .. p3}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v2

    invoke-interface {v2}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    shl-int/lit8 v2, v2, 0x20

    int-to-long v2, v2

    invoke-virtual/range {p3 .. p3}, Landroid/mtp/MtpStorageManager$MtpObject;->getModifiedTime()J

    move-result-wide v4

    add-long v16, v2, v4

    iget v4, v15, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    iget v5, v15, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    move-object/from16 v2, p4

    move v3, v9

    move-wide/from16 v6, v16

    invoke-virtual/range {v2 .. v7}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_1ae

    :sswitch_10a
    iget v4, v15, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    iget v5, v15, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    invoke-virtual/range {p3 .. p3}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v2

    invoke-virtual {v2}, Landroid/mtp/MtpStorageManager$MtpObject;->isRoot()Z

    move-result v2

    if-eqz v2, :cond_11b

    const-wide/16 v2, 0x0

    goto :goto_124

    :cond_11b
    invoke-virtual/range {p3 .. p3}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v2

    invoke-virtual {v2}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v2

    int-to-long v2, v2

    :goto_124
    move-wide v6, v2

    move-object/from16 v2, p4

    move v3, v9

    invoke-virtual/range {v2 .. v7}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_1ae

    :sswitch_12d
    iget v2, v15, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    invoke-virtual/range {p3 .. p3}, Landroid/mtp/MtpStorageManager$MtpObject;->getModifiedTime()J

    move-result-wide v3

    invoke-direct {v1, v3, v4}, Landroid/mtp/MtpPropertyGroup;->format_date_time(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v9, v2, v3}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_1ae

    :sswitch_13c
    iget v2, v15, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    invoke-virtual/range {p3 .. p3}, Landroid/mtp/MtpStorageManager$MtpObject;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v9, v2, v3}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_1ae

    :sswitch_147
    iget v4, v15, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    iget v5, v15, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    invoke-virtual/range {p3 .. p3}, Landroid/mtp/MtpStorageManager$MtpObject;->getSize()J

    move-result-wide v6

    move-object/from16 v2, p4

    move v3, v9

    invoke-virtual/range {v2 .. v7}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto :goto_1ae

    :sswitch_156
    iget v4, v15, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    iget v5, v15, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    const-wide/16 v6, 0x0

    move-object/from16 v2, p4

    move v3, v9

    invoke-virtual/range {v2 .. v7}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto :goto_1ae

    :sswitch_163
    iget v4, v15, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    iget v5, v15, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    invoke-virtual/range {p3 .. p3}, Landroid/mtp/MtpStorageManager$MtpObject;->getFormat()I

    move-result v2

    int-to-long v6, v2

    move-object/from16 v2, p4

    move v3, v9

    invoke-virtual/range {v2 .. v7}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto :goto_1ae

    :sswitch_173
    iget v4, v15, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    iget v5, v15, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    invoke-virtual/range {p3 .. p3}, Landroid/mtp/MtpStorageManager$MtpObject;->getStorageId()I

    move-result v2

    int-to-long v6, v2

    move-object/from16 v2, p4

    move v3, v9

    invoke-virtual/range {v2 .. v7}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto :goto_1ae

    :sswitch_183
    const-string v2, ""

    if-eqz v0, :cond_18d

    iget v3, v15, Landroid/mtp/MtpPropertyGroup$Property;->column:I

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_18d
    iget v3, v15, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    invoke-virtual {v8, v9, v3, v2}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto :goto_1ae

    :sswitch_193
    iget v4, v15, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    iget v5, v15, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    const-wide/16 v6, 0x0

    move-object/from16 v2, p4

    move v3, v9

    invoke-virtual/range {v2 .. v7}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto :goto_1ae

    :cond_1a0
    move-wide/from16 v16, v2

    :goto_1a2
    iget v4, v15, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    iget v5, v15, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    move-object/from16 v2, p4

    move v3, v9

    move-wide/from16 v6, v16

    invoke-virtual/range {v2 .. v7}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    :goto_1ae
    add-int/lit8 v14, v14, 0x1

    move-object v2, v0

    goto/16 :goto_17

    :cond_1b3
    if-eqz v2, :cond_1b8

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1b8
    const/16 v0, 0x2001

    return v0

    nop

    :sswitch_data_1bc
    .sparse-switch
        0xdc01 -> :sswitch_173
        0xdc02 -> :sswitch_163
        0xdc03 -> :sswitch_156
        0xdc04 -> :sswitch_147
        0xdc07 -> :sswitch_13c
        0xdc09 -> :sswitch_12d
        0xdc0b -> :sswitch_10a
        0xdc41 -> :sswitch_e7
        0xdc44 -> :sswitch_13c
        0xdc4e -> :sswitch_12d
        0xdc8b -> :sswitch_c7
        0xdc99 -> :sswitch_a0
        0xdce0 -> :sswitch_13c
        0xde92 -> :sswitch_93
        0xde93 -> :sswitch_84
        0xde94 -> :sswitch_93
        0xde99 -> :sswitch_84
        0xde9a -> :sswitch_84
    .end sparse-switch

    :sswitch_data_206
    .sparse-switch
        0x0 -> :sswitch_193
        0xffff -> :sswitch_183
    .end sparse-switch
.end method
