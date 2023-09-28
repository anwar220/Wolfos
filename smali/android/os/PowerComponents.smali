# classes3.dex

.class Landroid/os/PowerComponents;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/PowerComponents$Builder;
    }
.end annotation


# instance fields
.field private final mData:Landroid/os/BatteryConsumer$BatteryConsumerData;


# direct methods
.method static bridge synthetic -$$Nest$fgetmData(Landroid/os/PowerComponents;)Landroid/os/BatteryConsumer$BatteryConsumerData;
    .registers 1

    iget-object p0, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    return-object p0
.end method

.method constructor <init>(Landroid/os/BatteryConsumer$BatteryConsumerData;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    return-void
.end method

.method constructor <init>(Landroid/os/PowerComponents$Builder;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/os/PowerComponents$Builder;->-$$Nest$fgetmData(Landroid/os/PowerComponents$Builder;)Landroid/os/BatteryConsumer$BatteryConsumerData;

    move-result-object v0

    iput-object v0, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    return-void
.end method

.method static parseXml(Landroid/util/TypedXmlPullParser;Landroid/os/PowerComponents$Builder;)V
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-interface/range {p0 .. p0}, Landroid/util/TypedXmlPullParser;->getEventType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_14e

    invoke-interface/range {p0 .. p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "power_components"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14e

    :goto_18
    const/4 v4, 0x3

    if-ne v2, v4, :cond_2a

    invoke-interface/range {p0 .. p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_26

    goto :goto_2a

    :cond_26
    move/from16 v19, v2

    goto/16 :goto_14d

    :cond_2a
    :goto_2a
    const/4 v6, 0x1

    if-eq v2, v6, :cond_14b

    if-ne v2, v3, :cond_142

    invoke-interface/range {p0 .. p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_156

    :cond_3a
    goto :goto_4f

    :sswitch_3b
    const-string v8, "custom_component"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3a

    move v7, v6

    goto :goto_50

    :sswitch_45
    const-string v8, "component"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3a

    const/4 v7, 0x0

    goto :goto_50

    :goto_4f
    const/4 v7, -0x1

    :goto_50
    const-string/jumbo v8, "power"

    const-string/jumbo v11, "id"

    const-string v12, "duration"

    packed-switch v7, :pswitch_data_160

    move/from16 v19, v2

    goto/16 :goto_144

    :pswitch_5f  #0x1
    const/4 v4, -0x1

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const/4 v7, 0x0

    move-wide v9, v15

    :goto_66
    invoke-interface/range {p0 .. p0}, Landroid/util/TypedXmlPullParser;->getAttributeCount()I

    move-result v3

    if-ge v7, v3, :cond_a8

    invoke-interface {v0, v7}, Landroid/util/TypedXmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v17

    sparse-switch v17, :sswitch_data_168

    :cond_77
    goto :goto_90

    :sswitch_78
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_77

    move v3, v6

    goto :goto_91

    :sswitch_80
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_77

    const/4 v3, 0x0

    goto :goto_91

    :sswitch_88
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_77

    const/4 v3, 0x2

    goto :goto_91

    :goto_90
    const/4 v3, -0x1

    :goto_91
    packed-switch v3, :pswitch_data_176

    goto :goto_a4

    :pswitch_95  #0x2
    invoke-interface {v0, v7}, Landroid/util/TypedXmlPullParser;->getAttributeLong(I)J

    move-result-wide v9

    goto :goto_a4

    :pswitch_9a  #0x1
    invoke-interface {v0, v7}, Landroid/util/TypedXmlPullParser;->getAttributeDouble(I)D

    move-result-wide v13

    goto :goto_a4

    :pswitch_9f  #0x0
    invoke-interface {v0, v7}, Landroid/util/TypedXmlPullParser;->getAttributeInt(I)I

    move-result v3

    move v4, v3

    :goto_a4
    add-int/lit8 v7, v7, 0x1

    const/4 v3, 0x2

    goto :goto_66

    :cond_a8
    invoke-virtual {v1, v4, v13, v14}, Landroid/os/PowerComponents$Builder;->setConsumedPowerForCustomComponent(ID)Landroid/os/PowerComponents$Builder;

    invoke-virtual {v1, v4, v9, v10}, Landroid/os/PowerComponents$Builder;->setUsageDurationForCustomComponentMillis(IJ)Landroid/os/PowerComponents$Builder;

    move/from16 v19, v2

    goto/16 :goto_144

    :pswitch_b2  #0x0
    const/4 v3, -0x1

    const/4 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v13, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v4, v17

    move/from16 v6, v18

    :goto_c0
    invoke-interface/range {p0 .. p0}, Landroid/util/TypedXmlPullParser;->getAttributeCount()I

    move-result v15

    if-ge v6, v15, :cond_131

    invoke-interface {v0, v6}, Landroid/util/TypedXmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    move-result v19

    sparse-switch v19, :sswitch_data_180

    move/from16 v19, v2

    goto :goto_10c

    :sswitch_d4
    move/from16 v19, v2

    const-string/jumbo v2, "process_state"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10c

    const/4 v2, 0x1

    goto :goto_10d

    :sswitch_e1
    move/from16 v19, v2

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10c

    const/4 v2, 0x2

    goto :goto_10d

    :sswitch_eb
    move/from16 v19, v2

    const-string/jumbo v2, "model"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10c

    const/4 v2, 0x4

    goto :goto_10d

    :sswitch_f8
    move/from16 v19, v2

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10c

    const/4 v2, 0x0

    goto :goto_10d

    :sswitch_102
    move/from16 v19, v2

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10c

    const/4 v2, 0x3

    goto :goto_10d

    :cond_10c
    :goto_10c
    const/4 v2, -0x1

    :goto_10d
    packed-switch v2, :pswitch_data_196

    goto :goto_12c

    :pswitch_111  #0x4
    invoke-interface {v0, v6}, Landroid/util/TypedXmlPullParser;->getAttributeInt(I)I

    move-result v2

    move v4, v2

    goto :goto_12c

    :pswitch_117  #0x3
    invoke-interface {v0, v6}, Landroid/util/TypedXmlPullParser;->getAttributeLong(I)J

    move-result-wide v13

    goto :goto_12c

    :pswitch_11c  #0x2
    invoke-interface {v0, v6}, Landroid/util/TypedXmlPullParser;->getAttributeDouble(I)D

    move-result-wide v9

    goto :goto_12c

    :pswitch_121  #0x1
    invoke-interface {v0, v6}, Landroid/util/TypedXmlPullParser;->getAttributeInt(I)I

    move-result v2

    move v7, v2

    goto :goto_12c

    :pswitch_127  #0x0
    invoke-interface {v0, v6}, Landroid/util/TypedXmlPullParser;->getAttributeInt(I)I

    move-result v2

    move v3, v2

    :goto_12c
    add-int/lit8 v6, v6, 0x1

    move/from16 v2, v19

    goto :goto_c0

    :cond_131
    move/from16 v19, v2

    invoke-static/range {p1 .. p1}, Landroid/os/PowerComponents$Builder;->-$$Nest$fgetmData(Landroid/os/PowerComponents$Builder;)Landroid/os/BatteryConsumer$BatteryConsumerData;

    move-result-object v2

    invoke-virtual {v2, v3, v7}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getKey(II)Landroid/os/BatteryConsumer$Key;

    move-result-object v2

    invoke-virtual {v1, v2, v9, v10, v4}, Landroid/os/PowerComponents$Builder;->setConsumedPower(Landroid/os/BatteryConsumer$Key;DI)Landroid/os/PowerComponents$Builder;

    invoke-virtual {v1, v2, v13, v14}, Landroid/os/PowerComponents$Builder;->setUsageDurationMillis(Landroid/os/BatteryConsumer$Key;J)Landroid/os/PowerComponents$Builder;

    goto :goto_144

    :cond_142
    move/from16 v19, v2

    :goto_144
    invoke-interface/range {p0 .. p0}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x2

    goto/16 :goto_18

    :cond_14b
    move/from16 v19, v2

    :goto_14d
    return-void

    :cond_14e
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v4, "Invalid XML parser state"

    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3

    :sswitch_data_156
    .sparse-switch
        -0x5370e303 -> :sswitch_45
        -0x1a183651 -> :sswitch_3b
    .end sparse-switch

    :pswitch_data_160
    .packed-switch 0x0
        :pswitch_b2  #00000000
        :pswitch_5f  #00000001
    .end packed-switch

    :sswitch_data_168
    .sparse-switch
        -0x76bbb26c -> :sswitch_88
        0xd1b -> :sswitch_80
        0x65e8905 -> :sswitch_78
    .end sparse-switch

    :pswitch_data_176
    .packed-switch 0x0
        :pswitch_9f  #00000000
        :pswitch_9a  #00000001
        :pswitch_95  #00000002
    .end packed-switch

    :sswitch_data_180
    .sparse-switch
        -0x76bbb26c -> :sswitch_102
        0xd1b -> :sswitch_f8
        0x633fb29 -> :sswitch_eb
        0x65e8905 -> :sswitch_e1
        0x633976c1 -> :sswitch_d4
    .end sparse-switch

    :pswitch_data_196
    .packed-switch 0x0
        :pswitch_127  #00000000
        :pswitch_121  #00000001
        :pswitch_11c  #00000002
        :pswitch_117  #00000003
        :pswitch_111  #00000004
    .end packed-switch
.end method

.method private writePowerComponentUsage(Landroid/util/proto/ProtoOutputStream;JIJJ)V
    .registers 13

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    const-wide v2, 0x10500000001L

    invoke-virtual {p1, v2, v3, p4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10300000002L

    invoke-virtual {p1, v2, v3, p5, p6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v2, 0x10300000003L

    invoke-virtual {p1, v2, v3, p7, p8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method private writePowerUsageSlice(Landroid/util/proto/ProtoOutputStream;IJJI)V
    .registers 21

    move-object v9, p1

    move/from16 v10, p7

    const-wide v0, 0x20b00000003L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v11

    const-wide v2, 0x10b00000001L

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    invoke-direct/range {v0 .. v8}, Landroid/os/PowerComponents;->writePowerComponentUsage(Landroid/util/proto/ProtoOutputStream;JIJJ)V

    packed-switch v10, :pswitch_data_4c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown process state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_37  #0x4
    const/4 v0, 0x4

    goto :goto_3f

    :pswitch_39  #0x3
    const/4 v0, 0x3

    goto :goto_3f

    :pswitch_3b  #0x2
    const/4 v0, 0x2

    goto :goto_3f

    :pswitch_3d  #0x1
    const/4 v0, 0x1

    nop

    :goto_3f
    const-wide v1, 0x10e00000002L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {p1, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void

    nop

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_3d  #00000001
        :pswitch_3b  #00000002
        :pswitch_39  #00000003
        :pswitch_37  #00000004
    .end packed-switch
.end method

.method private writeStatsProtoImpl(Landroid/util/proto/ProtoOutputStream;)Z
    .registers 24

    move-object/from16 v9, p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v10, v1

    :goto_5
    const/16 v1, 0x12

    const-wide/16 v11, 0x0

    const/4 v13, 0x1

    if-ge v10, v1, :cond_68

    iget-object v1, v9, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    invoke-virtual {v1, v10}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getKeys(I)[Landroid/os/BatteryConsumer$Key;

    move-result-object v14

    array-length v15, v14

    const/4 v1, 0x0

    move v7, v1

    :goto_15
    if-ge v7, v15, :cond_65

    aget-object v8, v14, v7

    invoke-virtual {v9, v8}, Landroid/os/PowerComponents;->getConsumedPower(Landroid/os/BatteryConsumer$Key;)D

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/os/BatteryConsumer;->convertMahToDeciCoulombs(D)J

    move-result-wide v16

    invoke-virtual {v9, v8}, Landroid/os/PowerComponents;->getUsageDurationMillis(Landroid/os/BatteryConsumer$Key;)J

    move-result-wide v18

    cmp-long v1, v16, v11

    if-nez v1, :cond_30

    cmp-long v1, v18, v11

    if-nez v1, :cond_30

    move/from16 v21, v7

    goto :goto_61

    :cond_30
    const/16 v20, 0x1

    if-nez p1, :cond_35

    return v13

    :cond_35
    iget v0, v8, Landroid/os/BatteryConsumer$Key;->processState:I

    if-nez v0, :cond_4e

    const-wide v2, 0x20b00000002L

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v4, v10

    move-wide/from16 v5, v16

    move/from16 v21, v7

    move-object v13, v8

    move-wide/from16 v7, v18

    invoke-direct/range {v0 .. v8}, Landroid/os/PowerComponents;->writePowerComponentUsage(Landroid/util/proto/ProtoOutputStream;JIJJ)V

    goto :goto_5f

    :cond_4e
    move/from16 v21, v7

    move-object v13, v8

    iget v7, v13, Landroid/os/BatteryConsumer$Key;->processState:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v10

    move-wide/from16 v3, v16

    move-wide/from16 v5, v18

    invoke-direct/range {v0 .. v7}, Landroid/os/PowerComponents;->writePowerUsageSlice(Landroid/util/proto/ProtoOutputStream;IJJI)V

    :goto_5f
    move/from16 v0, v20

    :goto_61
    add-int/lit8 v7, v21, 0x1

    const/4 v13, 0x1

    goto :goto_15

    :cond_65
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_68
    const/4 v1, 0x0

    move v10, v1

    :goto_6a
    iget-object v1, v9, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v1, v1, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget v1, v1, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->customPowerComponentCount:I

    if-ge v10, v1, :cond_aa

    add-int/lit16 v13, v10, 0x3e8

    nop

    invoke-virtual {v9, v13}, Landroid/os/PowerComponents;->getConsumedPowerForCustomComponent(I)D

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/os/BatteryConsumer;->convertMahToDeciCoulombs(D)J

    move-result-wide v14

    invoke-virtual {v9, v13}, Landroid/os/PowerComponents;->getUsageDurationForCustomComponentMillis(I)J

    move-result-wide v16

    cmp-long v1, v14, v11

    if-nez v1, :cond_8c

    cmp-long v1, v16, v11

    if-nez v1, :cond_8c

    const/16 v19, 0x1

    goto :goto_a7

    :cond_8c
    const/16 v18, 0x1

    if-nez p1, :cond_93

    const/16 v19, 0x1

    return v19

    :cond_93
    const/16 v19, 0x1

    const-wide v2, 0x20b00000002L

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v4, v13

    move-wide v5, v14

    move-wide/from16 v7, v16

    invoke-direct/range {v0 .. v8}, Landroid/os/PowerComponents;->writePowerComponentUsage(Landroid/util/proto/ProtoOutputStream;JIJJ)V

    move/from16 v0, v18

    :goto_a7
    add-int/lit8 v10, v10, 0x1

    goto :goto_6a

    :cond_aa
    return v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Z)V
    .registers 21

    move-object/from16 v0, p0

    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    :goto_a
    const/16 v4, 0x12

    const-wide/16 v5, 0x0

    const-string v7, "="

    if-ge v3, v4, :cond_62

    iget-object v4, v0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    invoke-virtual {v4, v3}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getKeys(I)[Landroid/os/BatteryConsumer$Key;

    move-result-object v4

    array-length v8, v4

    const/4 v9, 0x0

    :goto_1a
    if-ge v9, v8, :cond_5f

    aget-object v10, v4, v9

    invoke-virtual {v0, v10}, Landroid/os/PowerComponents;->getConsumedPower(Landroid/os/BatteryConsumer$Key;)D

    move-result-wide v11

    invoke-virtual {v0, v10}, Landroid/os/PowerComponents;->getUsageDurationMillis(Landroid/os/BatteryConsumer$Key;)J

    move-result-wide v13

    const-wide/16 v15, 0x0

    if-eqz p2, :cond_33

    cmpl-double v17, v11, v5

    if-nez v17, :cond_33

    cmp-long v17, v13, v15

    if-nez v17, :cond_33

    goto :goto_5a

    :cond_33
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v10}, Landroid/os/BatteryConsumer$Key;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11, v12}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmp-long v5, v13, v15

    if-eqz v5, :cond_5a

    const-string v5, " ("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v13, v14}, Landroid/os/BatteryStats;->formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V

    const-string v5, ")"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5a
    :goto_5a
    add-int/lit8 v9, v9, 0x1

    const-wide/16 v5, 0x0

    goto :goto_1a

    :cond_5f
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_62
    iget-object v3, v0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v3, v3, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget v3, v3, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->customPowerComponentCount:I

    const/16 v4, 0x3e8

    :goto_6a
    add-int/lit16 v5, v3, 0x3e8

    if-ge v4, v5, :cond_97

    nop

    invoke-virtual {v0, v4}, Landroid/os/PowerComponents;->getConsumedPowerForCustomComponent(I)D

    move-result-wide v5

    if-eqz p2, :cond_7c

    const-wide/16 v8, 0x0

    cmpl-double v10, v5, v8

    if-nez v10, :cond_7e

    goto :goto_94

    :cond_7c
    const-wide/16 v8, 0x0

    :cond_7e
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v4}, Landroid/os/PowerComponents;->getCustomPowerComponentName(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5, v6}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_94
    add-int/lit8 v4, v4, 0x1

    goto :goto_6a

    :cond_97
    move-object/from16 v4, p1

    invoke-virtual {v4, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    return-void
.end method

.method public getConsumedPower(Landroid/os/BatteryConsumer$Dimensions;)D
    .registers 8

    iget v0, p1, Landroid/os/BatteryConsumer$Dimensions;->powerComponent:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_16

    iget-object v0, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v1, p1, Landroid/os/BatteryConsumer$Dimensions;->powerComponent:I

    iget v2, p1, Landroid/os/BatteryConsumer$Dimensions;->processState:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getKeyOrThrow(II)Landroid/os/BatteryConsumer$Key;

    move-result-object v1

    iget v1, v1, Landroid/os/BatteryConsumer$Key;->mPowerColumnIndex:I

    invoke-virtual {v0, v1}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getDouble(I)D

    move-result-wide v0

    return-wide v0

    :cond_16
    iget v0, p1, Landroid/os/BatteryConsumer$Dimensions;->processState:I

    if-eqz v0, :cond_5b

    iget-object v0, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v0, v0, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget-boolean v0, v0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->processStateDataIncluded:Z

    if-eqz v0, :cond_42

    iget-object v0, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v0, v0, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget-object v0, v0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->processStateKeys:[[Landroid/os/BatteryConsumer$Key;

    iget v1, p1, Landroid/os/BatteryConsumer$Dimensions;->processState:I

    aget-object v0, v0, v1

    const-wide/16 v1, 0x0

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    :goto_31
    if-ltz v3, :cond_41

    iget-object v4, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    aget-object v5, v0, v3

    iget v5, v5, Landroid/os/BatteryConsumer$Key;->mPowerColumnIndex:I

    invoke-virtual {v4, v5}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getDouble(I)D

    move-result-wide v4

    add-double/2addr v1, v4

    add-int/lit8 v3, v3, -0x1

    goto :goto_31

    :cond_41
    return-wide v1

    :cond_42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No data included in BatteryUsageStats for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5b
    iget-object v0, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v1, v0, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget v1, v1, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->totalConsumedPowerColumnIndex:I

    invoke-virtual {v0, v1}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getConsumedPower(Landroid/os/BatteryConsumer$Key;)D
    .registers 4

    iget-object v0, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v1, p1, Landroid/os/BatteryConsumer$Key;->mPowerColumnIndex:I

    invoke-virtual {v0, v1}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getConsumedPowerForCustomComponent(I)D
    .registers 6

    add-int/lit16 v0, p1, -0x3e8

    if-ltz v0, :cond_18

    iget-object v1, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v1, v1, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget v1, v1, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->customPowerComponentCount:I

    if-ge v0, v1, :cond_18

    iget-object v1, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v2, v1, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget v2, v2, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->firstCustomConsumedPowerColumn:I

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getDouble(I)D

    move-result-wide v1

    return-wide v1

    :cond_18
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported custom power component ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getCustomPowerComponentName(I)Ljava/lang/String;
    .registers 7

    add-int/lit16 v0, p1, -0x3e8

    const-string v1, "Unsupported custom power component ID: "

    if-ltz v0, :cond_2f

    iget-object v2, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v2, v2, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget v2, v2, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->customPowerComponentCount:I

    if-ge v0, v2, :cond_2f

    :try_start_e
    iget-object v2, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v2, v2, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget-object v2, v2, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->customPowerComponentNames:[Ljava/lang/String;

    aget-object v1, v2, v0
    :try_end_16
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_e .. :try_end_16} :catch_17

    return-object v1

    :catch_17
    move-exception v2

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2f
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method getPowerModel(Landroid/os/BatteryConsumer$Key;)I
    .registers 4

    iget v0, p1, Landroid/os/BatteryConsumer$Key;->mPowerModelColumnIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_e

    iget-object v0, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v1, p1, Landroid/os/BatteryConsumer$Key;->mPowerModelColumnIndex:I

    invoke-virtual {v0, v1}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getInt(I)I

    move-result v0

    return v0

    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Power model IDs were not requested in the BatteryUsageStatsQuery"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUsageDurationForCustomComponentMillis(I)J
    .registers 6

    add-int/lit16 v0, p1, -0x3e8

    if-ltz v0, :cond_18

    iget-object v1, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v1, v1, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget v1, v1, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->customPowerComponentCount:I

    if-ge v0, v1, :cond_18

    iget-object v1, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v2, v1, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget v2, v2, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->firstCustomUsageDurationColumn:I

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getLong(I)J

    move-result-wide v1

    return-wide v1

    :cond_18
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported custom power component ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getUsageDurationMillis(Landroid/os/BatteryConsumer$Key;)J
    .registers 4

    iget-object v0, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v1, p1, Landroid/os/BatteryConsumer$Key;->mDurationColumnIndex:I

    invoke-virtual {v0, v1}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method hasStatsProtoData()Z
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/os/PowerComponents;->writeStatsProtoImpl(Landroid/util/proto/ProtoOutputStream;)Z

    move-result v0

    return v0
.end method

.method writeStatsProto(Landroid/util/proto/ProtoOutputStream;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/os/PowerComponents;->writeStatsProtoImpl(Landroid/util/proto/ProtoOutputStream;)Z

    return-void
.end method

.method writeToXml(Landroid/util/TypedXmlSerializer;)V
    .registers 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    const-string/jumbo v3, "power_components"

    invoke-interface {v1, v2, v3}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v4, 0x0

    :goto_c
    const/16 v5, 0x12

    const-string v6, "duration"

    const-string/jumbo v7, "power"

    const-string/jumbo v8, "id"

    const-wide/16 v11, 0x0

    if-ge v4, v5, :cond_9f

    iget-object v5, v0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    invoke-virtual {v5, v4}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getKeys(I)[Landroid/os/BatteryConsumer$Key;

    move-result-object v5

    array-length v13, v5

    const/4 v14, 0x0

    :goto_22
    if-ge v14, v13, :cond_96

    aget-object v15, v5, v14

    move-object/from16 v17, v3

    invoke-virtual {v0, v15}, Landroid/os/PowerComponents;->getConsumedPower(Landroid/os/BatteryConsumer$Key;)D

    move-result-wide v2

    invoke-virtual {v0, v15}, Landroid/os/PowerComponents;->getUsageDurationMillis(Landroid/os/BatteryConsumer$Key;)J

    move-result-wide v9

    cmpl-double v20, v2, v11

    if-nez v20, :cond_3f

    const-wide/16 v18, 0x0

    cmp-long v20, v9, v18

    if-nez v20, :cond_3f

    move-object/from16 v22, v5

    move/from16 v23, v13

    goto :goto_8a

    :cond_3f
    const-string v11, "component"

    const/4 v12, 0x0

    invoke-interface {v1, v12, v11}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v1, v12, v8, v4}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    iget v12, v15, Landroid/os/BatteryConsumer$Key;->processState:I

    if-eqz v12, :cond_5a

    iget v12, v15, Landroid/os/BatteryConsumer$Key;->processState:I

    move-object/from16 v22, v5

    const-string/jumbo v5, "process_state"

    move/from16 v23, v13

    const/4 v13, 0x0

    invoke-interface {v1, v13, v5, v12}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_5f

    :cond_5a
    move-object/from16 v22, v5

    move/from16 v23, v13

    const/4 v13, 0x0

    :goto_5f
    const-wide/16 v20, 0x0

    cmpl-double v5, v2, v20

    if-eqz v5, :cond_68

    invoke-interface {v1, v13, v7, v2, v3}, Landroid/util/TypedXmlSerializer;->attributeDouble(Ljava/lang/String;Ljava/lang/String;D)Lorg/xmlpull/v1/XmlSerializer;

    :cond_68
    const-wide/16 v18, 0x0

    cmp-long v5, v9, v18

    if-eqz v5, :cond_71

    invoke-interface {v1, v13, v6, v9, v10}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    :cond_71
    iget-object v5, v0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v5, v5, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget-boolean v5, v5, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->powerModelsIncluded:Z

    if-eqz v5, :cond_86

    nop

    invoke-virtual {v0, v15}, Landroid/os/PowerComponents;->getPowerModel(Landroid/os/BatteryConsumer$Key;)I

    move-result v5

    const-string/jumbo v12, "model"

    const/4 v13, 0x0

    invoke-interface {v1, v13, v12, v5}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_87

    :cond_86
    const/4 v13, 0x0

    :goto_87
    invoke-interface {v1, v13, v11}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :goto_8a
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v3, v17

    move-object/from16 v5, v22

    move/from16 v13, v23

    const/4 v2, 0x0

    const-wide/16 v11, 0x0

    goto :goto_22

    :cond_96
    move-object/from16 v17, v3

    move-object/from16 v22, v5

    add-int/lit8 v4, v4, 0x1

    const/4 v2, 0x0

    goto/16 :goto_c

    :cond_9f
    move-object/from16 v17, v3

    iget-object v2, v0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v2, v2, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget v2, v2, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->customPowerComponentCount:I

    add-int/lit16 v2, v2, 0x3e8

    const/16 v3, 0x3e8

    :goto_ab
    if-ge v3, v2, :cond_e8

    invoke-virtual {v0, v3}, Landroid/os/PowerComponents;->getConsumedPowerForCustomComponent(I)D

    move-result-wide v4

    invoke-virtual {v0, v3}, Landroid/os/PowerComponents;->getUsageDurationForCustomComponentMillis(I)J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmpl-double v13, v4, v11

    if-nez v13, :cond_c7

    const-wide/16 v11, 0x0

    cmp-long v13, v9, v11

    if-nez v13, :cond_c7

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    goto :goto_e5

    :cond_c7
    const-string v11, "custom_component"

    const/4 v12, 0x0

    invoke-interface {v1, v12, v11}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v1, v12, v8, v3}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-wide/16 v13, 0x0

    cmpl-double v15, v4, v13

    if-eqz v15, :cond_d9

    invoke-interface {v1, v12, v7, v4, v5}, Landroid/util/TypedXmlSerializer;->attributeDouble(Ljava/lang/String;Ljava/lang/String;D)Lorg/xmlpull/v1/XmlSerializer;

    :cond_d9
    const-wide/16 v15, 0x0

    cmp-long v18, v9, v15

    if-eqz v18, :cond_e2

    invoke-interface {v1, v12, v6, v9, v10}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    :cond_e2
    invoke-interface {v1, v12, v11}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :goto_e5
    add-int/lit8 v3, v3, 0x1

    goto :goto_ab

    :cond_e8
    const/4 v12, 0x0

    move-object/from16 v3, v17

    invoke-interface {v1, v12, v3}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method
