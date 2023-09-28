# classes4.dex

.class final Lcom/android/framework/protobuf/MessageSchema;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/framework/protobuf/Schema;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/framework/protobuf/Schema<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final EMPTY_INT_ARRAY:[I

.field private static final ENFORCE_UTF8_MASK:I = 0x20000000

.field private static final FIELD_TYPE_MASK:I = 0xff00000

.field private static final INTS_PER_FIELD:I = 0x3

.field private static final OFFSET_BITS:I = 0x14

.field private static final OFFSET_MASK:I = 0xfffff

.field static final ONEOF_TYPE_OFFSET:I = 0x33

.field private static final REQUIRED_MASK:I = 0x10000000

.field private static final UNSAFE:Lsun/misc/Unsafe;


# instance fields
.field private final buffer:[I

.field private final checkInitializedCount:I

.field private final defaultInstance:Lcom/android/framework/protobuf/MessageLite;

.field private final extensionSchema:Lcom/android/framework/protobuf/ExtensionSchema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/framework/protobuf/ExtensionSchema<",
            "*>;"
        }
    .end annotation
.end field

.field private final hasExtensions:Z

.field private final intArray:[I

.field private final listFieldSchema:Lcom/android/framework/protobuf/ListFieldSchema;

.field private final lite:Z

.field private final mapFieldSchema:Lcom/android/framework/protobuf/MapFieldSchema;

.field private final maxFieldNumber:I

.field private final minFieldNumber:I

.field private final newInstanceSchema:Lcom/android/framework/protobuf/NewInstanceSchema;

.field private final objects:[Ljava/lang/Object;

.field private final proto3:Z

.field private final repeatedFieldOffsetStart:I

.field private final unknownFieldSchema:Lcom/android/framework/protobuf/UnknownFieldSchema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/framework/protobuf/UnknownFieldSchema<",
            "**>;"
        }
    .end annotation
.end field

.field private final useCachedSizeField:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/framework/protobuf/MessageSchema;->EMPTY_INT_ARRAY:[I

    invoke-static {}, Lcom/android/framework/protobuf/UnsafeUtil;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/android/framework/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    return-void
.end method

.method private constructor <init>([I[Ljava/lang/Object;IILcom/android/framework/protobuf/MessageLite;ZZ[IIILcom/android/framework/protobuf/NewInstanceSchema;Lcom/android/framework/protobuf/ListFieldSchema;Lcom/android/framework/protobuf/UnknownFieldSchema;Lcom/android/framework/protobuf/ExtensionSchema;Lcom/android/framework/protobuf/MapFieldSchema;)V
    .registers 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[",
            "Ljava/lang/Object;",
            "II",
            "Lcom/android/framework/protobuf/MessageLite;",
            "ZZ[III",
            "Lcom/android/framework/protobuf/NewInstanceSchema;",
            "Lcom/android/framework/protobuf/ListFieldSchema;",
            "Lcom/android/framework/protobuf/UnknownFieldSchema<",
            "**>;",
            "Lcom/android/framework/protobuf/ExtensionSchema<",
            "*>;",
            "Lcom/android/framework/protobuf/MapFieldSchema;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p14

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v3, p1

    iput-object v3, v0, Lcom/android/framework/protobuf/MessageSchema;->buffer:[I

    move-object/from16 v4, p2

    iput-object v4, v0, Lcom/android/framework/protobuf/MessageSchema;->objects:[Ljava/lang/Object;

    move/from16 v5, p3

    iput v5, v0, Lcom/android/framework/protobuf/MessageSchema;->minFieldNumber:I

    move/from16 v6, p4

    iput v6, v0, Lcom/android/framework/protobuf/MessageSchema;->maxFieldNumber:I

    instance-of v7, v1, Lcom/android/framework/protobuf/GeneratedMessageLite;

    iput-boolean v7, v0, Lcom/android/framework/protobuf/MessageSchema;->lite:Z

    move/from16 v7, p6

    iput-boolean v7, v0, Lcom/android/framework/protobuf/MessageSchema;->proto3:Z

    if-eqz v2, :cond_2b

    invoke-virtual {v2, v1}, Lcom/android/framework/protobuf/ExtensionSchema;->hasExtensions(Lcom/android/framework/protobuf/MessageLite;)Z

    move-result v8

    if-eqz v8, :cond_2b

    const/4 v8, 0x1

    goto :goto_2c

    :cond_2b
    const/4 v8, 0x0

    :goto_2c
    iput-boolean v8, v0, Lcom/android/framework/protobuf/MessageSchema;->hasExtensions:Z

    move/from16 v8, p7

    iput-boolean v8, v0, Lcom/android/framework/protobuf/MessageSchema;->useCachedSizeField:Z

    move-object/from16 v9, p8

    iput-object v9, v0, Lcom/android/framework/protobuf/MessageSchema;->intArray:[I

    move/from16 v10, p9

    iput v10, v0, Lcom/android/framework/protobuf/MessageSchema;->checkInitializedCount:I

    move/from16 v11, p10

    iput v11, v0, Lcom/android/framework/protobuf/MessageSchema;->repeatedFieldOffsetStart:I

    move-object/from16 v12, p11

    iput-object v12, v0, Lcom/android/framework/protobuf/MessageSchema;->newInstanceSchema:Lcom/android/framework/protobuf/NewInstanceSchema;

    move-object/from16 v13, p12

    iput-object v13, v0, Lcom/android/framework/protobuf/MessageSchema;->listFieldSchema:Lcom/android/framework/protobuf/ListFieldSchema;

    move-object/from16 v14, p13

    iput-object v14, v0, Lcom/android/framework/protobuf/MessageSchema;->unknownFieldSchema:Lcom/android/framework/protobuf/UnknownFieldSchema;

    iput-object v2, v0, Lcom/android/framework/protobuf/MessageSchema;->extensionSchema:Lcom/android/framework/protobuf/ExtensionSchema;

    iput-object v1, v0, Lcom/android/framework/protobuf/MessageSchema;->defaultInstance:Lcom/android/framework/protobuf/MessageLite;

    move-object/from16 v15, p15

    iput-object v15, v0, Lcom/android/framework/protobuf/MessageSchema;->mapFieldSchema:Lcom/android/framework/protobuf/MapFieldSchema;

    return-void
.end method

.method private arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)Z"
        }
    .end annotation

    invoke-direct {p0, p1, p3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v0

    invoke-direct {p0, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private static booleanAt(Ljava/lang/Object;J)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)Z"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/UnsafeUtil;->getBoolean(Ljava/lang/Object;J)Z

    move-result v0

    return v0
.end method

.method private decodeMapEntry([BIILcom/android/framework/protobuf/MapEntryLite$Metadata;Ljava/util/Map;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">([BII",
            "Lcom/android/framework/protobuf/MapEntryLite$Metadata<",
            "TK;TV;>;",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lcom/android/framework/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v7, p1

    move/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p6

    move/from16 v0, p2

    invoke-static {v7, v0, v10}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget v11, v10, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    if-ltz v11, :cond_aa

    sub-int v1, v8, v0

    if-gt v11, v1, :cond_aa

    add-int v12, v0, v11

    iget-object v1, v9, Lcom/android/framework/protobuf/MapEntryLite$Metadata;->defaultKey:Ljava/lang/Object;

    iget-object v2, v9, Lcom/android/framework/protobuf/MapEntryLite$Metadata;->defaultValue:Ljava/lang/Object;

    move-object v13, v1

    move-object v14, v2

    :goto_1e
    if-ge v0, v12, :cond_99

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v7, v0

    if-gez v0, :cond_2f

    invoke-static {v0, v7, v1, v10}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32(I[BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    iget v0, v10, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    move v15, v0

    move v6, v1

    goto :goto_31

    :cond_2f
    move v15, v0

    move v6, v1

    :goto_31
    ushr-int/lit8 v16, v15, 0x3

    and-int/lit8 v5, v15, 0x7

    packed-switch v16, :pswitch_data_b4

    move/from16 v17, v6

    move/from16 p2, v11

    move v11, v5

    goto :goto_90

    :pswitch_3e  #0x2
    iget-object v0, v9, Lcom/android/framework/protobuf/MapEntryLite$Metadata;->valueType:Lcom/android/framework/protobuf/WireFormat$FieldType;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/WireFormat$FieldType;->getWireType()I

    move-result v0

    if-ne v5, v0, :cond_67

    iget-object v4, v9, Lcom/android/framework/protobuf/MapEntryLite$Metadata;->valueType:Lcom/android/framework/protobuf/WireFormat$FieldType;

    iget-object v0, v9, Lcom/android/framework/protobuf/MapEntryLite$Metadata;->defaultValue:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v6

    move/from16 v3, p3

    move/from16 p2, v11

    move v11, v5

    move-object/from16 v5, v17

    move/from16 v17, v6

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/framework/protobuf/MessageSchema;->decodeMapEntryValue([BIILcom/android/framework/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget-object v14, v10, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    move/from16 v11, p2

    goto :goto_1e

    :cond_67
    move/from16 v17, v6

    move/from16 p2, v11

    move v11, v5

    goto :goto_90

    :pswitch_6d  #0x1
    move/from16 v17, v6

    move/from16 p2, v11

    move v11, v5

    iget-object v0, v9, Lcom/android/framework/protobuf/MapEntryLite$Metadata;->keyType:Lcom/android/framework/protobuf/WireFormat$FieldType;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/WireFormat$FieldType;->getWireType()I

    move-result v0

    if-ne v11, v0, :cond_90

    iget-object v4, v9, Lcom/android/framework/protobuf/MapEntryLite$Metadata;->keyType:Lcom/android/framework/protobuf/WireFormat$FieldType;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    move/from16 v3, p3

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/framework/protobuf/MessageSchema;->decodeMapEntryValue([BIILcom/android/framework/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget-object v13, v10, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    move/from16 v11, p2

    goto :goto_1e

    :cond_90
    :goto_90
    move/from16 v1, v17

    invoke-static {v15, v7, v1, v8, v10}, Lcom/android/framework/protobuf/ArrayDecoders;->skipField(I[BIILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    move/from16 v11, p2

    goto :goto_1e

    :cond_99
    move/from16 p2, v11

    if-ne v0, v12, :cond_a3

    move-object/from16 v1, p5

    invoke-interface {v1, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v12

    :cond_a3
    move-object/from16 v1, p5

    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2

    :cond_aa
    move-object/from16 v1, p5

    move/from16 p2, v11

    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2

    nop

    :pswitch_data_b4
    .packed-switch 0x1
        :pswitch_6d  #00000001
        :pswitch_3e  #00000002
    .end packed-switch
.end method

.method private decodeMapEntryValue([BIILcom/android/framework/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lcom/android/framework/protobuf/WireFormat$FieldType;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/android/framework/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/android/framework/protobuf/MessageSchema$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual {p4}, Lcom/android/framework/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_b6

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "unsupported field type."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_14  #0x11
    invoke-static {p1, p2, p6}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeStringRequireUtf8([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    goto/16 :goto_b4

    :pswitch_1a  #0x10
    invoke-static {p1, p2, p6}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint64([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    iget-wide v0, p6, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->long1:J

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p6, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    goto/16 :goto_b4

    :pswitch_2c  #0xf
    invoke-static {p1, p2, p6}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    iget v0, p6, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-static {v0}, Lcom/android/framework/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p6, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    goto/16 :goto_b4

    :pswitch_3e  #0xe
    invoke-static {}, Lcom/android/framework/protobuf/Protobuf;->getInstance()Lcom/android/framework/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/android/framework/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/android/framework/protobuf/Schema;

    move-result-object v0

    invoke-static {v0, p1, p2, p3, p6}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeMessageField(Lcom/android/framework/protobuf/Schema;[BIILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    goto :goto_b4

    :pswitch_4b  #0xc, 0xd
    invoke-static {p1, p2, p6}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint64([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    iget-wide v0, p6, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->long1:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p6, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    goto :goto_b4

    :pswitch_58  #0x9, 0xa, 0xb
    invoke-static {p1, p2, p6}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    iget v0, p6, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p6, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    goto :goto_b4

    :pswitch_65  #0x8
    invoke-static {p1, p2}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeFloat([BI)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p6, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    add-int/lit8 p2, p2, 0x4

    goto :goto_b4

    :pswitch_72  #0x6, 0x7
    invoke-static {p1, p2}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeFixed64([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p6, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    add-int/lit8 p2, p2, 0x8

    goto :goto_b4

    :pswitch_7f  #0x4, 0x5
    invoke-static {p1, p2}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeFixed32([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p6, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    add-int/lit8 p2, p2, 0x4

    goto :goto_b4

    :pswitch_8c  #0x3
    invoke-static {p1, p2}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeDouble([BI)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p6, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    add-int/lit8 p2, p2, 0x8

    goto :goto_b4

    :pswitch_99  #0x2
    invoke-static {p1, p2, p6}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeBytes([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    goto :goto_b4

    :pswitch_9e  #0x1
    invoke-static {p1, p2, p6}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint64([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    iget-wide v0, p6, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->long1:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_ac

    const/4 v0, 0x1

    goto :goto_ad

    :cond_ac
    const/4 v0, 0x0

    :goto_ad
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p6, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    nop

    :goto_b4
    return p2

    nop

    :pswitch_data_b6
    .packed-switch 0x1
        :pswitch_9e  #00000001
        :pswitch_99  #00000002
        :pswitch_8c  #00000003
        :pswitch_7f  #00000004
        :pswitch_7f  #00000005
        :pswitch_72  #00000006
        :pswitch_72  #00000007
        :pswitch_65  #00000008
        :pswitch_58  #00000009
        :pswitch_58  #0000000a
        :pswitch_58  #0000000b
        :pswitch_4b  #0000000c
        :pswitch_4b  #0000000d
        :pswitch_3e  #0000000e
        :pswitch_2c  #0000000f
        :pswitch_1a  #00000010
        :pswitch_14  #00000011
    .end packed-switch
.end method

.method private static doubleAt(Ljava/lang/Object;J)D
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)D"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/UnsafeUtil;->getDouble(Ljava/lang/Object;J)D

    move-result-wide v0

    return-wide v0
.end method

.method private equals(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)Z"
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/android/framework/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-static {v0}, Lcom/android/framework/protobuf/MessageSchema;->type(I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch v3, :pswitch_data_1da

    return v5

    :pswitch_12  #0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39, 0x3a, 0x3b, 0x3c, 0x3d, 0x3e, 0x3f, 0x40, 0x41, 0x42, 0x43, 0x44
    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->isOneofCaseEqual(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-static {p1, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/framework/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    move v4, v5

    goto :goto_29

    :cond_28
    nop

    :goto_29
    return v4

    :pswitch_2a  #0x32
    nop

    invoke-static {p1, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/framework/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    return v3

    :pswitch_38  #0x12, 0x13, 0x14, 0x15, 0x16, 0x17, 0x18, 0x19, 0x1a, 0x1b, 0x1c, 0x1d, 0x1e, 0x1f, 0x20, 0x21, 0x22, 0x23, 0x24, 0x25, 0x26, 0x27, 0x28, 0x29, 0x2a, 0x2b, 0x2c, 0x2d, 0x2e, 0x2f, 0x30, 0x31
    nop

    invoke-static {p1, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/framework/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    return v3

    :pswitch_46  #0x11
    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_5c

    invoke-static {p1, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/framework/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5c

    move v4, v5

    goto :goto_5d

    :cond_5c
    nop

    :goto_5d
    return v4

    :pswitch_5e  #0x10
    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_72

    invoke-static {p1, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    cmp-long v3, v6, v8

    if-nez v3, :cond_72

    move v4, v5

    goto :goto_73

    :cond_72
    nop

    :goto_73
    return v4

    :pswitch_74  #0xf
    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_86

    invoke-static {p1, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v6

    if-ne v3, v6, :cond_86

    move v4, v5

    goto :goto_87

    :cond_86
    nop

    :goto_87
    return v4

    :pswitch_88  #0xe
    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_9c

    invoke-static {p1, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    cmp-long v3, v6, v8

    if-nez v3, :cond_9c

    move v4, v5

    goto :goto_9d

    :cond_9c
    nop

    :goto_9d
    return v4

    :pswitch_9e  #0xd
    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_b0

    invoke-static {p1, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v6

    if-ne v3, v6, :cond_b0

    move v4, v5

    goto :goto_b1

    :cond_b0
    nop

    :goto_b1
    return v4

    :pswitch_b2  #0xc
    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_c4

    invoke-static {p1, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v6

    if-ne v3, v6, :cond_c4

    move v4, v5

    goto :goto_c5

    :cond_c4
    nop

    :goto_c5
    return v4

    :pswitch_c6  #0xb
    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_d8

    invoke-static {p1, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v6

    if-ne v3, v6, :cond_d8

    move v4, v5

    goto :goto_d9

    :cond_d8
    nop

    :goto_d9
    return v4

    :pswitch_da  #0xa
    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_f0

    invoke-static {p1, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/framework/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f0

    move v4, v5

    goto :goto_f1

    :cond_f0
    nop

    :goto_f1
    return v4

    :pswitch_f2  #0x9
    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_108

    invoke-static {p1, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/framework/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_108

    move v4, v5

    goto :goto_109

    :cond_108
    nop

    :goto_109
    return v4

    :pswitch_10a  #0x8
    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_120

    invoke-static {p1, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/framework/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_120

    move v4, v5

    goto :goto_121

    :cond_120
    nop

    :goto_121
    return v4

    :pswitch_122  #0x7
    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_134

    invoke-static {p1, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getBoolean(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getBoolean(Ljava/lang/Object;J)Z

    move-result v6

    if-ne v3, v6, :cond_134

    move v4, v5

    goto :goto_135

    :cond_134
    nop

    :goto_135
    return v4

    :pswitch_136  #0x6
    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_148

    invoke-static {p1, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v6

    if-ne v3, v6, :cond_148

    move v4, v5

    goto :goto_149

    :cond_148
    nop

    :goto_149
    return v4

    :pswitch_14a  #0x5
    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_15e

    invoke-static {p1, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    cmp-long v3, v6, v8

    if-nez v3, :cond_15e

    move v4, v5

    goto :goto_15f

    :cond_15e
    nop

    :goto_15f
    return v4

    :pswitch_160  #0x4
    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_172

    invoke-static {p1, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v6

    if-ne v3, v6, :cond_172

    move v4, v5

    goto :goto_173

    :cond_172
    nop

    :goto_173
    return v4

    :pswitch_174  #0x3
    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_188

    invoke-static {p1, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    cmp-long v3, v6, v8

    if-nez v3, :cond_188

    move v4, v5

    goto :goto_189

    :cond_188
    nop

    :goto_189
    return v4

    :pswitch_18a  #0x2
    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_19e

    invoke-static {p1, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    cmp-long v3, v6, v8

    if-nez v3, :cond_19e

    move v4, v5

    goto :goto_19f

    :cond_19e
    nop

    :goto_19f
    return v4

    :pswitch_1a0  #0x1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1ba

    invoke-static {p1, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getFloat(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getFloat(Ljava/lang/Object;J)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v6

    if-ne v3, v6, :cond_1ba

    move v4, v5

    goto :goto_1bb

    :cond_1ba
    nop

    :goto_1bb
    return v4

    :pswitch_1bc  #0x0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1d8

    invoke-static {p1, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getDouble(Ljava/lang/Object;J)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getDouble(Ljava/lang/Object;J)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v8

    cmp-long v3, v6, v8

    if-nez v3, :cond_1d8

    move v4, v5

    goto :goto_1d9

    :cond_1d8
    nop

    :goto_1d9
    return v4

    :pswitch_data_1da
    .packed-switch 0x0
        :pswitch_1bc  #00000000
        :pswitch_1a0  #00000001
        :pswitch_18a  #00000002
        :pswitch_174  #00000003
        :pswitch_160  #00000004
        :pswitch_14a  #00000005
        :pswitch_136  #00000006
        :pswitch_122  #00000007
        :pswitch_10a  #00000008
        :pswitch_f2  #00000009
        :pswitch_da  #0000000a
        :pswitch_c6  #0000000b
        :pswitch_b2  #0000000c
        :pswitch_9e  #0000000d
        :pswitch_88  #0000000e
        :pswitch_74  #0000000f
        :pswitch_5e  #00000010
        :pswitch_46  #00000011
        :pswitch_38  #00000012
        :pswitch_38  #00000013
        :pswitch_38  #00000014
        :pswitch_38  #00000015
        :pswitch_38  #00000016
        :pswitch_38  #00000017
        :pswitch_38  #00000018
        :pswitch_38  #00000019
        :pswitch_38  #0000001a
        :pswitch_38  #0000001b
        :pswitch_38  #0000001c
        :pswitch_38  #0000001d
        :pswitch_38  #0000001e
        :pswitch_38  #0000001f
        :pswitch_38  #00000020
        :pswitch_38  #00000021
        :pswitch_38  #00000022
        :pswitch_38  #00000023
        :pswitch_38  #00000024
        :pswitch_38  #00000025
        :pswitch_38  #00000026
        :pswitch_38  #00000027
        :pswitch_38  #00000028
        :pswitch_38  #00000029
        :pswitch_38  #0000002a
        :pswitch_38  #0000002b
        :pswitch_38  #0000002c
        :pswitch_38  #0000002d
        :pswitch_38  #0000002e
        :pswitch_38  #0000002f
        :pswitch_38  #00000030
        :pswitch_38  #00000031
        :pswitch_2a  #00000032
        :pswitch_12  #00000033
        :pswitch_12  #00000034
        :pswitch_12  #00000035
        :pswitch_12  #00000036
        :pswitch_12  #00000037
        :pswitch_12  #00000038
        :pswitch_12  #00000039
        :pswitch_12  #0000003a
        :pswitch_12  #0000003b
        :pswitch_12  #0000003c
        :pswitch_12  #0000003d
        :pswitch_12  #0000003e
        :pswitch_12  #0000003f
        :pswitch_12  #00000040
        :pswitch_12  #00000041
        :pswitch_12  #00000042
        :pswitch_12  #00000043
        :pswitch_12  #00000044
    .end packed-switch
.end method

.method private final filterMapUnknownEnumValues(Ljava/lang/Object;ILjava/lang/Object;Lcom/android/framework/protobuf/UnknownFieldSchema;)Ljava/lang/Object;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "ITUB;",
            "Lcom/android/framework/protobuf/UnknownFieldSchema<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    move-object/from16 v7, p0

    move/from16 v8, p2

    invoke-direct {v7, v8}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v9

    invoke-direct {v7, v8}, Lcom/android/framework/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v10

    move-object/from16 v12, p1

    invoke-static {v12, v10, v11}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_19

    return-object p3

    :cond_19
    invoke-direct {v7, v8}, Lcom/android/framework/protobuf/MessageSchema;->getEnumFieldVerifier(I)Lcom/android/framework/protobuf/Internal$EnumVerifier;

    move-result-object v14

    if-nez v14, :cond_20

    return-object p3

    :cond_20
    iget-object v0, v7, Lcom/android/framework/protobuf/MessageSchema;->mapFieldSchema:Lcom/android/framework/protobuf/MapFieldSchema;

    invoke-interface {v0, v13}, Lcom/android/framework/protobuf/MapFieldSchema;->forMutableMapData(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v15

    nop

    move-object/from16 v0, p0

    move/from16 v1, p2

    move v2, v9

    move-object v3, v15

    move-object v4, v14

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/framework/protobuf/MessageSchema;->filterUnknownEnumMap(IILjava/util/Map;Lcom/android/framework/protobuf/Internal$EnumVerifier;Ljava/lang/Object;Lcom/android/framework/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private final filterUnknownEnumMap(IILjava/util/Map;Lcom/android/framework/protobuf/Internal$EnumVerifier;Ljava/lang/Object;Lcom/android/framework/protobuf/UnknownFieldSchema;)Ljava/lang/Object;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lcom/android/framework/protobuf/Internal$EnumVerifier;",
            "TUB;",
            "Lcom/android/framework/protobuf/UnknownFieldSchema<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/framework/protobuf/MessageSchema;->mapFieldSchema:Lcom/android/framework/protobuf/MapFieldSchema;

    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/MessageSchema;->getMapFieldDefaultEntry(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/framework/protobuf/MapFieldSchema;->forMapMetadata(Ljava/lang/Object;)Lcom/android/framework/protobuf/MapEntryLite$Metadata;

    move-result-object v0

    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_68

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {p4, v3}, Lcom/android/framework/protobuf/Internal$EnumVerifier;->isInRange(I)Z

    move-result v3

    if-nez v3, :cond_67

    if-nez p5, :cond_34

    invoke-virtual {p6}, Lcom/android/framework/protobuf/UnknownFieldSchema;->newBuilder()Ljava/lang/Object;

    move-result-object p5

    :cond_34
    nop

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/android/framework/protobuf/MapEntryLite;->computeSerializedSize(Lcom/android/framework/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Lcom/android/framework/protobuf/ByteString;->newCodedBuilder(I)Lcom/android/framework/protobuf/ByteString$CodedBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/framework/protobuf/ByteString$CodedBuilder;->getCodedOutput()Lcom/android/framework/protobuf/CodedOutputStream;

    move-result-object v5

    :try_start_49
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v5, v0, v6, v7}, Lcom/android/framework/protobuf/MapEntryLite;->writeTo(Lcom/android/framework/protobuf/CodedOutputStream;Lcom/android/framework/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_54} :catch_60

    nop

    invoke-virtual {v4}, Lcom/android/framework/protobuf/ByteString$CodedBuilder;->build()Lcom/android/framework/protobuf/ByteString;

    move-result-object v6

    invoke-virtual {p6, p5, p2, v6}, Lcom/android/framework/protobuf/UnknownFieldSchema;->addLengthDelimited(Ljava/lang/Object;ILcom/android/framework/protobuf/ByteString;)V

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_67

    :catch_60
    move-exception v6

    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    :cond_67
    :goto_67
    goto :goto_12

    :cond_68
    return-object p5
.end method

.method private static floatAt(Ljava/lang/Object;J)F
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)F"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/UnsafeUtil;->getFloat(Ljava/lang/Object;J)F

    move-result v0

    return v0
.end method

.method private getEnumFieldVerifier(I)Lcom/android/framework/protobuf/Internal$EnumVerifier;
    .registers 4

    iget-object v0, p0, Lcom/android/framework/protobuf/MessageSchema;->objects:[Ljava/lang/Object;

    div-int/lit8 v1, p1, 0x3

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    check-cast v0, Lcom/android/framework/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method private getMapFieldDefaultEntry(I)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/android/framework/protobuf/MessageSchema;->objects:[Ljava/lang/Object;

    div-int/lit8 v1, p1, 0x3

    mul-int/lit8 v1, v1, 0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method private getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;
    .registers 7

    div-int/lit8 v0, p1, 0x3

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/android/framework/protobuf/MessageSchema;->objects:[Ljava/lang/Object;

    aget-object v1, v1, v0

    check-cast v1, Lcom/android/framework/protobuf/Schema;

    if-eqz v1, :cond_d

    return-object v1

    :cond_d
    invoke-static {}, Lcom/android/framework/protobuf/Protobuf;->getInstance()Lcom/android/framework/protobuf/Protobuf;

    move-result-object v2

    iget-object v3, p0, Lcom/android/framework/protobuf/MessageSchema;->objects:[Ljava/lang/Object;

    add-int/lit8 v4, v0, 0x1

    aget-object v3, v3, v4

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v2, v3}, Lcom/android/framework/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/android/framework/protobuf/Schema;

    move-result-object v1

    iget-object v2, p0, Lcom/android/framework/protobuf/MessageSchema;->objects:[Ljava/lang/Object;

    aput-object v1, v2, v0

    return-object v1
.end method

.method static getMutableUnknownFields(Ljava/lang/Object;)Lcom/android/framework/protobuf/UnknownFieldSetLite;
    .registers 3

    move-object v0, p0

    check-cast v0, Lcom/android/framework/protobuf/GeneratedMessageLite;

    iget-object v0, v0, Lcom/android/framework/protobuf/GeneratedMessageLite;->unknownFields:Lcom/android/framework/protobuf/UnknownFieldSetLite;

    invoke-static {}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->getDefaultInstance()Lcom/android/framework/protobuf/UnknownFieldSetLite;

    move-result-object v1

    if-ne v0, v1, :cond_14

    invoke-static {}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->newInstance()Lcom/android/framework/protobuf/UnknownFieldSetLite;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Lcom/android/framework/protobuf/GeneratedMessageLite;

    iput-object v0, v1, Lcom/android/framework/protobuf/GeneratedMessageLite;->unknownFields:Lcom/android/framework/protobuf/UnknownFieldSetLite;

    :cond_14
    return-object v0
.end method

.method private getSerializedSizeProto2(Ljava/lang/Object;)I
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    sget-object v3, Lcom/android/framework/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_a
    iget-object v7, v0, Lcom/android/framework/protobuf/MessageSchema;->buffer:[I

    array-length v7, v7

    if-ge v6, v7, :cond_664

    invoke-direct {v0, v6}, Lcom/android/framework/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v7

    invoke-direct {v0, v6}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v8

    invoke-static {v7}, Lcom/android/framework/protobuf/MessageSchema;->type(I)I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x11

    const v13, 0xfffff

    const/4 v14, 0x1

    if-gt v9, v12, :cond_3a

    iget-object v12, v0, Lcom/android/framework/protobuf/MessageSchema;->buffer:[I

    add-int/lit8 v15, v6, 0x2

    aget v10, v12, v15

    and-int v12, v10, v13

    ushr-int/lit8 v13, v10, 0x14

    shl-int v11, v14, v13

    if-eq v12, v4, :cond_39

    move v4, v12

    int-to-long v14, v12

    invoke-virtual {v3, v1, v14, v15}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    :cond_39
    goto :goto_56

    :cond_3a
    iget-boolean v12, v0, Lcom/android/framework/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v12, :cond_39

    sget-object v12, Lcom/android/framework/protobuf/FieldType;->DOUBLE_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

    invoke-virtual {v12}, Lcom/android/framework/protobuf/FieldType;->id()I

    move-result v12

    if-lt v9, v12, :cond_56

    sget-object v12, Lcom/android/framework/protobuf/FieldType;->SINT64_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

    invoke-virtual {v12}, Lcom/android/framework/protobuf/FieldType;->id()I

    move-result v12

    if-gt v9, v12, :cond_56

    iget-object v12, v0, Lcom/android/framework/protobuf/MessageSchema;->buffer:[I

    add-int/lit8 v14, v6, 0x2

    aget v12, v12, v14

    and-int v10, v12, v13

    :cond_56
    :goto_56
    invoke-static {v7}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v12

    const/4 v14, 0x0

    packed-switch v9, :pswitch_data_67c

    move/from16 v16, v4

    goto/16 :goto_65e

    :pswitch_62  #0x44
    invoke-direct {v0, v1, v8, v6}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_7c

    nop

    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/framework/protobuf/MessageLite;

    invoke-direct {v0, v6}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v15

    invoke-static {v8, v14, v15}, Lcom/android/framework/protobuf/CodedOutputStream;->computeGroupSize(ILcom/android/framework/protobuf/MessageLite;Lcom/android/framework/protobuf/Schema;)I

    move-result v14

    add-int/2addr v2, v14

    move/from16 v16, v4

    goto/16 :goto_65e

    :cond_7c
    move/from16 v16, v4

    goto/16 :goto_65e

    :pswitch_80  #0x43
    invoke-direct {v0, v1, v8, v6}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_93

    invoke-static {v1, v12, v13}, Lcom/android/framework/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v14

    invoke-static {v8, v14, v15}, Lcom/android/framework/protobuf/CodedOutputStream;->computeSInt64Size(IJ)I

    move-result v14

    add-int/2addr v2, v14

    move/from16 v16, v4

    goto/16 :goto_65e

    :cond_93
    move/from16 v16, v4

    goto/16 :goto_65e

    :pswitch_97  #0x42
    invoke-direct {v0, v1, v8, v6}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_aa

    invoke-static {v1, v12, v13}, Lcom/android/framework/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v14

    invoke-static {v8, v14}, Lcom/android/framework/protobuf/CodedOutputStream;->computeSInt32Size(II)I

    move-result v14

    add-int/2addr v2, v14

    move/from16 v16, v4

    goto/16 :goto_65e

    :cond_aa
    move/from16 v16, v4

    goto/16 :goto_65e

    :pswitch_ae  #0x41
    invoke-direct {v0, v1, v8, v6}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_bf

    const-wide/16 v14, 0x0

    invoke-static {v8, v14, v15}, Lcom/android/framework/protobuf/CodedOutputStream;->computeSFixed64Size(IJ)I

    move-result v14

    add-int/2addr v2, v14

    move/from16 v16, v4

    goto/16 :goto_65e

    :cond_bf
    move/from16 v16, v4

    goto/16 :goto_65e

    :pswitch_c3  #0x40
    invoke-direct {v0, v1, v8, v6}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v15

    if-eqz v15, :cond_d2

    invoke-static {v8, v14}, Lcom/android/framework/protobuf/CodedOutputStream;->computeSFixed32Size(II)I

    move-result v14

    add-int/2addr v2, v14

    move/from16 v16, v4

    goto/16 :goto_65e

    :cond_d2
    move/from16 v16, v4

    goto/16 :goto_65e

    :pswitch_d6  #0x3f
    invoke-direct {v0, v1, v8, v6}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_e9

    invoke-static {v1, v12, v13}, Lcom/android/framework/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v14

    invoke-static {v8, v14}, Lcom/android/framework/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v14

    add-int/2addr v2, v14

    move/from16 v16, v4

    goto/16 :goto_65e

    :cond_e9
    move/from16 v16, v4

    goto/16 :goto_65e

    :pswitch_ed  #0x3e
    invoke-direct {v0, v1, v8, v6}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_100

    invoke-static {v1, v12, v13}, Lcom/android/framework/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v14

    invoke-static {v8, v14}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v14

    add-int/2addr v2, v14

    move/from16 v16, v4

    goto/16 :goto_65e

    :cond_100
    move/from16 v16, v4

    goto/16 :goto_65e

    :pswitch_104  #0x3d
    invoke-direct {v0, v1, v8, v6}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_11a

    nop

    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/framework/protobuf/ByteString;

    invoke-static {v8, v14}, Lcom/android/framework/protobuf/CodedOutputStream;->computeBytesSize(ILcom/android/framework/protobuf/ByteString;)I

    move-result v14

    add-int/2addr v2, v14

    move/from16 v16, v4

    goto/16 :goto_65e

    :cond_11a
    move/from16 v16, v4

    goto/16 :goto_65e

    :pswitch_11e  #0x3c
    invoke-direct {v0, v1, v8, v6}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_135

    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v14

    invoke-direct {v0, v6}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v15

    invoke-static {v8, v14, v15}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeMessage(ILjava/lang/Object;Lcom/android/framework/protobuf/Schema;)I

    move-result v15

    add-int/2addr v2, v15

    move/from16 v16, v4

    goto/16 :goto_65e

    :cond_135
    move/from16 v16, v4

    goto/16 :goto_65e

    :pswitch_139  #0x3b
    invoke-direct {v0, v1, v8, v6}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_15c

    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v14

    instance-of v15, v14, Lcom/android/framework/protobuf/ByteString;

    if-eqz v15, :cond_150

    move-object v15, v14

    check-cast v15, Lcom/android/framework/protobuf/ByteString;

    invoke-static {v8, v15}, Lcom/android/framework/protobuf/CodedOutputStream;->computeBytesSize(ILcom/android/framework/protobuf/ByteString;)I

    move-result v15

    add-int/2addr v2, v15

    goto :goto_158

    :cond_150
    move-object v15, v14

    check-cast v15, Ljava/lang/String;

    invoke-static {v8, v15}, Lcom/android/framework/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v15

    add-int/2addr v2, v15

    :goto_158
    move/from16 v16, v4

    goto/16 :goto_65e

    :cond_15c
    move/from16 v16, v4

    goto/16 :goto_65e

    :pswitch_160  #0x3a
    invoke-direct {v0, v1, v8, v6}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_170

    const/4 v14, 0x1

    invoke-static {v8, v14}, Lcom/android/framework/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v14

    add-int/2addr v2, v14

    move/from16 v16, v4

    goto/16 :goto_65e

    :cond_170
    move/from16 v16, v4

    goto/16 :goto_65e

    :pswitch_174  #0x39
    invoke-direct {v0, v1, v8, v6}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v15

    if-eqz v15, :cond_183

    invoke-static {v8, v14}, Lcom/android/framework/protobuf/CodedOutputStream;->computeFixed32Size(II)I

    move-result v14

    add-int/2addr v2, v14

    move/from16 v16, v4

    goto/16 :goto_65e

    :cond_183
    move/from16 v16, v4

    goto/16 :goto_65e

    :pswitch_187  #0x38
    invoke-direct {v0, v1, v8, v6}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_198

    const-wide/16 v14, 0x0

    invoke-static {v8, v14, v15}, Lcom/android/framework/protobuf/CodedOutputStream;->computeFixed64Size(IJ)I

    move-result v14

    add-int/2addr v2, v14

    move/from16 v16, v4

    goto/16 :goto_65e

    :cond_198
    move/from16 v16, v4

    goto/16 :goto_65e

    :pswitch_19c  #0x37
    invoke-direct {v0, v1, v8, v6}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_1af

    invoke-static {v1, v12, v13}, Lcom/android/framework/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v14

    invoke-static {v8, v14}, Lcom/android/framework/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v14

    add-int/2addr v2, v14

    move/from16 v16, v4

    goto/16 :goto_65e

    :cond_1af
    move/from16 v16, v4

    goto/16 :goto_65e

    :pswitch_1b3  #0x36
    invoke-direct {v0, v1, v8, v6}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_1c6

    invoke-static {v1, v12, v13}, Lcom/android/framework/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v14

    invoke-static {v8, v14, v15}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v14

    add-int/2addr v2, v14

    move/from16 v16, v4

    goto/16 :goto_65e

    :cond_1c6
    move/from16 v16, v4

    goto/16 :goto_65e

    :pswitch_1ca  #0x35
    invoke-direct {v0, v1, v8, v6}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_1dd

    invoke-static {v1, v12, v13}, Lcom/android/framework/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v14

    invoke-static {v8, v14, v15}, Lcom/android/framework/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v14

    add-int/2addr v2, v14

    move/from16 v16, v4

    goto/16 :goto_65e

    :cond_1dd
    move/from16 v16, v4

    goto/16 :goto_65e

    :pswitch_1e1  #0x34
    invoke-direct {v0, v1, v8, v6}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_1f1

    const/4 v14, 0x0

    invoke-static {v8, v14}, Lcom/android/framework/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v14

    add-int/2addr v2, v14

    move/from16 v16, v4

    goto/16 :goto_65e

    :cond_1f1
    move/from16 v16, v4

    goto/16 :goto_65e

    :pswitch_1f5  #0x33
    invoke-direct {v0, v1, v8, v6}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_206

    const-wide/16 v14, 0x0

    invoke-static {v8, v14, v15}, Lcom/android/framework/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v14

    add-int/2addr v2, v14

    move/from16 v16, v4

    goto/16 :goto_65e

    :cond_206
    move/from16 v16, v4

    goto/16 :goto_65e

    :pswitch_20a  #0x32
    iget-object v14, v0, Lcom/android/framework/protobuf/MessageSchema;->mapFieldSchema:Lcom/android/framework/protobuf/MapFieldSchema;

    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v15

    move/from16 v16, v4

    invoke-direct {v0, v6}, Lcom/android/framework/protobuf/MessageSchema;->getMapFieldDefaultEntry(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v14, v8, v15, v4}, Lcom/android/framework/protobuf/MapFieldSchema;->getSerializedSize(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v2, v4

    goto/16 :goto_65e

    :pswitch_21d  #0x31
    move/from16 v16, v4

    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-direct {v0, v6}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v14

    invoke-static {v8, v4, v14}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeGroupList(ILjava/util/List;Lcom/android/framework/protobuf/Schema;)I

    move-result v4

    add-int/2addr v2, v4

    goto/16 :goto_65e

    :pswitch_230  #0x30
    move/from16 v16, v4

    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeSInt64ListNoTag(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_65e

    iget-boolean v14, v0, Lcom/android/framework/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v14, :cond_246

    int-to-long v14, v10

    invoke-virtual {v3, v1, v14, v15, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_246
    nop

    invoke-static {v8}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v14

    invoke-static {v4}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v15

    add-int/2addr v14, v15

    add-int/2addr v14, v4

    add-int/2addr v2, v14

    goto/16 :goto_65e

    :pswitch_254  #0x2f
    move/from16 v16, v4

    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeSInt32ListNoTag(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_65e

    iget-boolean v14, v0, Lcom/android/framework/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v14, :cond_26a

    int-to-long v14, v10

    invoke-virtual {v3, v1, v14, v15, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_26a
    nop

    invoke-static {v8}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v14

    invoke-static {v4}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v15

    add-int/2addr v14, v15

    add-int/2addr v14, v4

    add-int/2addr v2, v14

    goto/16 :goto_65e

    :pswitch_278  #0x2e
    move/from16 v16, v4

    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeFixed64ListNoTag(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_65e

    iget-boolean v14, v0, Lcom/android/framework/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v14, :cond_28e

    int-to-long v14, v10

    invoke-virtual {v3, v1, v14, v15, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_28e
    nop

    invoke-static {v8}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v14

    invoke-static {v4}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v15

    add-int/2addr v14, v15

    add-int/2addr v14, v4

    add-int/2addr v2, v14

    goto/16 :goto_65e

    :pswitch_29c  #0x2d
    move/from16 v16, v4

    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeFixed32ListNoTag(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_65e

    iget-boolean v14, v0, Lcom/android/framework/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v14, :cond_2b2

    int-to-long v14, v10

    invoke-virtual {v3, v1, v14, v15, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_2b2
    nop

    invoke-static {v8}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v14

    invoke-static {v4}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v15

    add-int/2addr v14, v15

    add-int/2addr v14, v4

    add-int/2addr v2, v14

    goto/16 :goto_65e

    :pswitch_2c0  #0x2c
    move/from16 v16, v4

    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeEnumListNoTag(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_65e

    iget-boolean v14, v0, Lcom/android/framework/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v14, :cond_2d6

    int-to-long v14, v10

    invoke-virtual {v3, v1, v14, v15, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_2d6
    nop

    invoke-static {v8}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v14

    invoke-static {v4}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v15

    add-int/2addr v14, v15

    add-int/2addr v14, v4

    add-int/2addr v2, v14

    goto/16 :goto_65e

    :pswitch_2e4  #0x2b
    move/from16 v16, v4

    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeUInt32ListNoTag(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_65e

    iget-boolean v14, v0, Lcom/android/framework/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v14, :cond_2fa

    int-to-long v14, v10

    invoke-virtual {v3, v1, v14, v15, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_2fa
    nop

    invoke-static {v8}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v14

    invoke-static {v4}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v15

    add-int/2addr v14, v15

    add-int/2addr v14, v4

    add-int/2addr v2, v14

    goto/16 :goto_65e

    :pswitch_308  #0x2a
    move/from16 v16, v4

    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeBoolListNoTag(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_65e

    iget-boolean v14, v0, Lcom/android/framework/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v14, :cond_31e

    int-to-long v14, v10

    invoke-virtual {v3, v1, v14, v15, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_31e
    nop

    invoke-static {v8}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v14

    invoke-static {v4}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v15

    add-int/2addr v14, v15

    add-int/2addr v14, v4

    add-int/2addr v2, v14

    goto/16 :goto_65e

    :pswitch_32c  #0x29
    move/from16 v16, v4

    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeFixed32ListNoTag(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_65e

    iget-boolean v14, v0, Lcom/android/framework/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v14, :cond_342

    int-to-long v14, v10

    invoke-virtual {v3, v1, v14, v15, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_342
    nop

    invoke-static {v8}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v14

    invoke-static {v4}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v15

    add-int/2addr v14, v15

    add-int/2addr v14, v4

    add-int/2addr v2, v14

    goto/16 :goto_65e

    :pswitch_350  #0x28
    move/from16 v16, v4

    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeFixed64ListNoTag(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_65e

    iget-boolean v14, v0, Lcom/android/framework/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v14, :cond_366

    int-to-long v14, v10

    invoke-virtual {v3, v1, v14, v15, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_366
    nop

    invoke-static {v8}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v14

    invoke-static {v4}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v15

    add-int/2addr v14, v15

    add-int/2addr v14, v4

    add-int/2addr v2, v14

    goto/16 :goto_65e

    :pswitch_374  #0x27
    move/from16 v16, v4

    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeInt32ListNoTag(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_65e

    iget-boolean v14, v0, Lcom/android/framework/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v14, :cond_38a

    int-to-long v14, v10

    invoke-virtual {v3, v1, v14, v15, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_38a
    nop

    invoke-static {v8}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v14

    invoke-static {v4}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v15

    add-int/2addr v14, v15

    add-int/2addr v14, v4

    add-int/2addr v2, v14

    goto/16 :goto_65e

    :pswitch_398  #0x26
    move/from16 v16, v4

    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeUInt64ListNoTag(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_65e

    iget-boolean v14, v0, Lcom/android/framework/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v14, :cond_3ae

    int-to-long v14, v10

    invoke-virtual {v3, v1, v14, v15, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_3ae
    nop

    invoke-static {v8}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v14

    invoke-static {v4}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v15

    add-int/2addr v14, v15

    add-int/2addr v14, v4

    add-int/2addr v2, v14

    goto/16 :goto_65e

    :pswitch_3bc  #0x25
    move/from16 v16, v4

    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeInt64ListNoTag(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_65e

    iget-boolean v14, v0, Lcom/android/framework/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v14, :cond_3d2

    int-to-long v14, v10

    invoke-virtual {v3, v1, v14, v15, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_3d2
    nop

    invoke-static {v8}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v14

    invoke-static {v4}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v15

    add-int/2addr v14, v15

    add-int/2addr v14, v4

    add-int/2addr v2, v14

    goto/16 :goto_65e

    :pswitch_3e0  #0x24
    move/from16 v16, v4

    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeFixed32ListNoTag(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_65e

    iget-boolean v14, v0, Lcom/android/framework/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v14, :cond_3f6

    int-to-long v14, v10

    invoke-virtual {v3, v1, v14, v15, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_3f6
    nop

    invoke-static {v8}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v14

    invoke-static {v4}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v15

    add-int/2addr v14, v15

    add-int/2addr v14, v4

    add-int/2addr v2, v14

    goto/16 :goto_65e

    :pswitch_404  #0x23
    move/from16 v16, v4

    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeFixed64ListNoTag(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_65e

    iget-boolean v14, v0, Lcom/android/framework/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v14, :cond_41a

    int-to-long v14, v10

    invoke-virtual {v3, v1, v14, v15, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_41a
    nop

    invoke-static {v8}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v14

    invoke-static {v4}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v15

    add-int/2addr v14, v15

    add-int/2addr v14, v4

    add-int/2addr v2, v14

    goto/16 :goto_65e

    :pswitch_428  #0x22
    move/from16 v16, v4

    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v8, v4, v14}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeSInt64List(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v2, v4

    goto/16 :goto_65e

    :pswitch_437  #0x21
    move/from16 v16, v4

    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v8, v4, v14}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeSInt32List(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v2, v4

    goto/16 :goto_65e

    :pswitch_446  #0x20
    move/from16 v16, v4

    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v8, v4, v14}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeFixed64List(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v2, v4

    goto/16 :goto_65e

    :pswitch_455  #0x1f
    move/from16 v16, v4

    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v8, v4, v14}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeFixed32List(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v2, v4

    goto/16 :goto_65e

    :pswitch_464  #0x1e
    move/from16 v16, v4

    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v8, v4, v14}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeEnumList(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v2, v4

    goto/16 :goto_65e

    :pswitch_473  #0x1d
    move/from16 v16, v4

    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v8, v4, v14}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeUInt32List(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v2, v4

    goto/16 :goto_65e

    :pswitch_482  #0x1c
    move/from16 v16, v4

    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v8, v4}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeByteStringList(ILjava/util/List;)I

    move-result v4

    add-int/2addr v2, v4

    goto/16 :goto_65e

    :pswitch_491  #0x1b
    move/from16 v16, v4

    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-direct {v0, v6}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v14

    invoke-static {v8, v4, v14}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeMessageList(ILjava/util/List;Lcom/android/framework/protobuf/Schema;)I

    move-result v4

    add-int/2addr v2, v4

    goto/16 :goto_65e

    :pswitch_4a4  #0x1a
    move/from16 v16, v4

    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v8, v4}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeStringList(ILjava/util/List;)I

    move-result v4

    add-int/2addr v2, v4

    goto/16 :goto_65e

    :pswitch_4b3  #0x19
    move/from16 v16, v4

    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v8, v4, v14}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeBoolList(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v2, v4

    goto/16 :goto_65e

    :pswitch_4c2  #0x18
    move/from16 v16, v4

    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v8, v4, v14}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeFixed32List(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v2, v4

    goto/16 :goto_65e

    :pswitch_4d1  #0x17
    move/from16 v16, v4

    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v8, v4, v14}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeFixed64List(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v2, v4

    goto/16 :goto_65e

    :pswitch_4e0  #0x16
    move/from16 v16, v4

    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v8, v4, v14}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeInt32List(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v2, v4

    goto/16 :goto_65e

    :pswitch_4ef  #0x15
    move/from16 v16, v4

    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v8, v4, v14}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeUInt64List(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v2, v4

    goto/16 :goto_65e

    :pswitch_4fe  #0x14
    move/from16 v16, v4

    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v8, v4, v14}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeInt64List(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v2, v4

    goto/16 :goto_65e

    :pswitch_50d  #0x13
    move/from16 v16, v4

    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v8, v4, v14}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeFixed32List(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v2, v4

    goto/16 :goto_65e

    :pswitch_51c  #0x12
    move/from16 v16, v4

    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v8, v4, v14}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeFixed64List(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v2, v4

    goto/16 :goto_65e

    :pswitch_52b  #0x11
    move/from16 v16, v4

    and-int v4, v5, v11

    if-eqz v4, :cond_65e

    nop

    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/framework/protobuf/MessageLite;

    invoke-direct {v0, v6}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v14

    invoke-static {v8, v4, v14}, Lcom/android/framework/protobuf/CodedOutputStream;->computeGroupSize(ILcom/android/framework/protobuf/MessageLite;Lcom/android/framework/protobuf/Schema;)I

    move-result v4

    add-int/2addr v2, v4

    goto/16 :goto_65e

    :pswitch_543  #0x10
    move/from16 v16, v4

    and-int v4, v5, v11

    if-eqz v4, :cond_65e

    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v14

    invoke-static {v8, v14, v15}, Lcom/android/framework/protobuf/CodedOutputStream;->computeSInt64Size(IJ)I

    move-result v4

    add-int/2addr v2, v4

    goto/16 :goto_65e

    :pswitch_554  #0xf
    move/from16 v16, v4

    and-int v4, v5, v11

    if-eqz v4, :cond_65e

    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v8, v4}, Lcom/android/framework/protobuf/CodedOutputStream;->computeSInt32Size(II)I

    move-result v4

    add-int/2addr v2, v4

    goto/16 :goto_65e

    :pswitch_565  #0xe
    move/from16 v16, v4

    and-int v4, v5, v11

    if-eqz v4, :cond_65e

    const-wide/16 v14, 0x0

    invoke-static {v8, v14, v15}, Lcom/android/framework/protobuf/CodedOutputStream;->computeSFixed64Size(IJ)I

    move-result v4

    add-int/2addr v2, v4

    goto/16 :goto_65e

    :pswitch_574  #0xd
    move/from16 v16, v4

    and-int v4, v5, v11

    if-eqz v4, :cond_65e

    invoke-static {v8, v14}, Lcom/android/framework/protobuf/CodedOutputStream;->computeSFixed32Size(II)I

    move-result v4

    add-int/2addr v2, v4

    goto/16 :goto_65e

    :pswitch_581  #0xc
    move/from16 v16, v4

    and-int v4, v5, v11

    if-eqz v4, :cond_65e

    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v8, v4}, Lcom/android/framework/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v4

    add-int/2addr v2, v4

    goto/16 :goto_65e

    :pswitch_592  #0xb
    move/from16 v16, v4

    and-int v4, v5, v11

    if-eqz v4, :cond_65e

    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v8, v4}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v4

    add-int/2addr v2, v4

    goto/16 :goto_65e

    :pswitch_5a3  #0xa
    move/from16 v16, v4

    and-int v4, v5, v11

    if-eqz v4, :cond_65e

    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/framework/protobuf/ByteString;

    invoke-static {v8, v4}, Lcom/android/framework/protobuf/CodedOutputStream;->computeBytesSize(ILcom/android/framework/protobuf/ByteString;)I

    move-result v14

    add-int/2addr v2, v14

    goto/16 :goto_65e

    :pswitch_5b6  #0x9
    move/from16 v16, v4

    and-int v4, v5, v11

    if-eqz v4, :cond_65e

    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v6}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v14

    invoke-static {v8, v4, v14}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeMessage(ILjava/lang/Object;Lcom/android/framework/protobuf/Schema;)I

    move-result v14

    add-int/2addr v2, v14

    goto/16 :goto_65e

    :pswitch_5cb  #0x8
    move/from16 v16, v4

    and-int v4, v5, v11

    if-eqz v4, :cond_65e

    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    instance-of v14, v4, Lcom/android/framework/protobuf/ByteString;

    if-eqz v14, :cond_5e2

    move-object v14, v4

    check-cast v14, Lcom/android/framework/protobuf/ByteString;

    invoke-static {v8, v14}, Lcom/android/framework/protobuf/CodedOutputStream;->computeBytesSize(ILcom/android/framework/protobuf/ByteString;)I

    move-result v14

    add-int/2addr v2, v14

    goto :goto_5ea

    :cond_5e2
    move-object v14, v4

    check-cast v14, Ljava/lang/String;

    invoke-static {v8, v14}, Lcom/android/framework/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v14

    add-int/2addr v2, v14

    :goto_5ea
    goto/16 :goto_65e

    :pswitch_5ec  #0x7
    move/from16 v16, v4

    and-int v4, v5, v11

    if-eqz v4, :cond_65e

    const/4 v4, 0x1

    invoke-static {v8, v4}, Lcom/android/framework/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v2, v4

    goto/16 :goto_65e

    :pswitch_5fa  #0x6
    move/from16 v16, v4

    and-int v4, v5, v11

    if-eqz v4, :cond_65e

    invoke-static {v8, v14}, Lcom/android/framework/protobuf/CodedOutputStream;->computeFixed32Size(II)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_65e

    :pswitch_606  #0x5
    move/from16 v16, v4

    and-int v4, v5, v11

    if-eqz v4, :cond_65e

    const-wide/16 v14, 0x0

    invoke-static {v8, v14, v15}, Lcom/android/framework/protobuf/CodedOutputStream;->computeFixed64Size(IJ)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_65e

    :pswitch_614  #0x4
    move/from16 v16, v4

    and-int v4, v5, v11

    if-eqz v4, :cond_65e

    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v8, v4}, Lcom/android/framework/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_65e

    :pswitch_624  #0x3
    move/from16 v16, v4

    and-int v4, v5, v11

    if-eqz v4, :cond_65e

    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v14

    invoke-static {v8, v14, v15}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_65e

    :pswitch_634  #0x2
    move/from16 v16, v4

    and-int v4, v5, v11

    if-eqz v4, :cond_65e

    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v14

    invoke-static {v8, v14, v15}, Lcom/android/framework/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_65e

    :pswitch_644  #0x1
    move/from16 v16, v4

    and-int v4, v5, v11

    if-eqz v4, :cond_65e

    const/4 v4, 0x0

    invoke-static {v8, v4}, Lcom/android/framework/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_65e

    :pswitch_651  #0x0
    move/from16 v16, v4

    and-int v4, v5, v11

    if-eqz v4, :cond_65e

    const-wide/16 v14, 0x0

    invoke-static {v8, v14, v15}, Lcom/android/framework/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v4

    add-int/2addr v2, v4

    :cond_65e
    :goto_65e
    add-int/lit8 v6, v6, 0x3

    move/from16 v4, v16

    goto/16 :goto_a

    :cond_664
    iget-object v6, v0, Lcom/android/framework/protobuf/MessageSchema;->unknownFieldSchema:Lcom/android/framework/protobuf/UnknownFieldSchema;

    invoke-direct {v0, v6, v1}, Lcom/android/framework/protobuf/MessageSchema;->getUnknownFieldsSerializedSize(Lcom/android/framework/protobuf/UnknownFieldSchema;Ljava/lang/Object;)I

    move-result v6

    add-int/2addr v2, v6

    iget-boolean v6, v0, Lcom/android/framework/protobuf/MessageSchema;->hasExtensions:Z

    if-eqz v6, :cond_67a

    iget-object v6, v0, Lcom/android/framework/protobuf/MessageSchema;->extensionSchema:Lcom/android/framework/protobuf/ExtensionSchema;

    invoke-virtual {v6, v1}, Lcom/android/framework/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Lcom/android/framework/protobuf/FieldSet;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/framework/protobuf/FieldSet;->getSerializedSize()I

    move-result v6

    add-int/2addr v2, v6

    :cond_67a
    return v2

    nop

    :pswitch_data_67c
    .packed-switch 0x0
        :pswitch_651  #00000000
        :pswitch_644  #00000001
        :pswitch_634  #00000002
        :pswitch_624  #00000003
        :pswitch_614  #00000004
        :pswitch_606  #00000005
        :pswitch_5fa  #00000006
        :pswitch_5ec  #00000007
        :pswitch_5cb  #00000008
        :pswitch_5b6  #00000009
        :pswitch_5a3  #0000000a
        :pswitch_592  #0000000b
        :pswitch_581  #0000000c
        :pswitch_574  #0000000d
        :pswitch_565  #0000000e
        :pswitch_554  #0000000f
        :pswitch_543  #00000010
        :pswitch_52b  #00000011
        :pswitch_51c  #00000012
        :pswitch_50d  #00000013
        :pswitch_4fe  #00000014
        :pswitch_4ef  #00000015
        :pswitch_4e0  #00000016
        :pswitch_4d1  #00000017
        :pswitch_4c2  #00000018
        :pswitch_4b3  #00000019
        :pswitch_4a4  #0000001a
        :pswitch_491  #0000001b
        :pswitch_482  #0000001c
        :pswitch_473  #0000001d
        :pswitch_464  #0000001e
        :pswitch_455  #0000001f
        :pswitch_446  #00000020
        :pswitch_437  #00000021
        :pswitch_428  #00000022
        :pswitch_404  #00000023
        :pswitch_3e0  #00000024
        :pswitch_3bc  #00000025
        :pswitch_398  #00000026
        :pswitch_374  #00000027
        :pswitch_350  #00000028
        :pswitch_32c  #00000029
        :pswitch_308  #0000002a
        :pswitch_2e4  #0000002b
        :pswitch_2c0  #0000002c
        :pswitch_29c  #0000002d
        :pswitch_278  #0000002e
        :pswitch_254  #0000002f
        :pswitch_230  #00000030
        :pswitch_21d  #00000031
        :pswitch_20a  #00000032
        :pswitch_1f5  #00000033
        :pswitch_1e1  #00000034
        :pswitch_1ca  #00000035
        :pswitch_1b3  #00000036
        :pswitch_19c  #00000037
        :pswitch_187  #00000038
        :pswitch_174  #00000039
        :pswitch_160  #0000003a
        :pswitch_139  #0000003b
        :pswitch_11e  #0000003c
        :pswitch_104  #0000003d
        :pswitch_ed  #0000003e
        :pswitch_d6  #0000003f
        :pswitch_c3  #00000040
        :pswitch_ae  #00000041
        :pswitch_97  #00000042
        :pswitch_80  #00000043
        :pswitch_62  #00000044
    .end packed-switch
.end method

.method private getSerializedSizeProto3(Ljava/lang/Object;)I
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Lcom/android/framework/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_8
    iget-object v5, v0, Lcom/android/framework/protobuf/MessageSchema;->buffer:[I

    array-length v5, v5

    if-ge v4, v5, :cond_57f

    invoke-direct {v0, v4}, Lcom/android/framework/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v5

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->type(I)I

    move-result v6

    invoke-direct {v0, v4}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    sget-object v10, Lcom/android/framework/protobuf/FieldType;->DOUBLE_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

    invoke-virtual {v10}, Lcom/android/framework/protobuf/FieldType;->id()I

    move-result v10

    const/4 v11, 0x0

    if-lt v6, v10, :cond_39

    sget-object v10, Lcom/android/framework/protobuf/FieldType;->SINT64_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

    invoke-virtual {v10}, Lcom/android/framework/protobuf/FieldType;->id()I

    move-result v10

    if-gt v6, v10, :cond_39

    iget-object v10, v0, Lcom/android/framework/protobuf/MessageSchema;->buffer:[I

    add-int/lit8 v12, v4, 0x2

    aget v10, v10, v12

    const v12, 0xfffff

    and-int/2addr v10, v12

    goto :goto_3a

    :cond_39
    move v10, v11

    :goto_3a
    nop

    const/4 v12, 0x1

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    packed-switch v6, :pswitch_data_588

    goto/16 :goto_57b

    :pswitch_44  #0x44
    invoke-direct {v0, v1, v7, v4}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_57b

    nop

    invoke-static {v1, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/framework/protobuf/MessageLite;

    invoke-direct {v0, v4}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v12

    invoke-static {v7, v11, v12}, Lcom/android/framework/protobuf/CodedOutputStream;->computeGroupSize(ILcom/android/framework/protobuf/MessageLite;Lcom/android/framework/protobuf/Schema;)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57b

    :pswitch_5c  #0x43
    invoke-direct {v0, v1, v7, v4}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_57b

    invoke-static {v1, v8, v9}, Lcom/android/framework/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-static {v7, v11, v12}, Lcom/android/framework/protobuf/CodedOutputStream;->computeSInt64Size(IJ)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57b

    :pswitch_6d  #0x42
    invoke-direct {v0, v1, v7, v4}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_57b

    invoke-static {v1, v8, v9}, Lcom/android/framework/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v11

    invoke-static {v7, v11}, Lcom/android/framework/protobuf/CodedOutputStream;->computeSInt32Size(II)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57b

    :pswitch_7e  #0x41
    invoke-direct {v0, v1, v7, v4}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_57b

    invoke-static {v7, v14, v15}, Lcom/android/framework/protobuf/CodedOutputStream;->computeSFixed64Size(IJ)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57b

    :pswitch_8b  #0x40
    invoke-direct {v0, v1, v7, v4}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v12

    if-eqz v12, :cond_57b

    invoke-static {v7, v11}, Lcom/android/framework/protobuf/CodedOutputStream;->computeSFixed32Size(II)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57b

    :pswitch_98  #0x3f
    invoke-direct {v0, v1, v7, v4}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_57b

    invoke-static {v1, v8, v9}, Lcom/android/framework/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v11

    invoke-static {v7, v11}, Lcom/android/framework/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57b

    :pswitch_a9  #0x3e
    invoke-direct {v0, v1, v7, v4}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_57b

    invoke-static {v1, v8, v9}, Lcom/android/framework/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v11

    invoke-static {v7, v11}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57b

    :pswitch_ba  #0x3d
    invoke-direct {v0, v1, v7, v4}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_57b

    nop

    invoke-static {v1, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/framework/protobuf/ByteString;

    invoke-static {v7, v11}, Lcom/android/framework/protobuf/CodedOutputStream;->computeBytesSize(ILcom/android/framework/protobuf/ByteString;)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57b

    :pswitch_ce  #0x3c
    invoke-direct {v0, v1, v7, v4}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_57b

    invoke-static {v1, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    invoke-direct {v0, v4}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v12

    invoke-static {v7, v11, v12}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeMessage(ILjava/lang/Object;Lcom/android/framework/protobuf/Schema;)I

    move-result v12

    add-int/2addr v3, v12

    goto/16 :goto_57b

    :pswitch_e3  #0x3b
    invoke-direct {v0, v1, v7, v4}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_57b

    invoke-static {v1, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    instance-of v12, v11, Lcom/android/framework/protobuf/ByteString;

    if-eqz v12, :cond_fa

    move-object v12, v11

    check-cast v12, Lcom/android/framework/protobuf/ByteString;

    invoke-static {v7, v12}, Lcom/android/framework/protobuf/CodedOutputStream;->computeBytesSize(ILcom/android/framework/protobuf/ByteString;)I

    move-result v12

    add-int/2addr v3, v12

    goto :goto_102

    :cond_fa
    move-object v12, v11

    check-cast v12, Ljava/lang/String;

    invoke-static {v7, v12}, Lcom/android/framework/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v12

    add-int/2addr v3, v12

    :goto_102
    goto/16 :goto_57b

    :pswitch_104  #0x3a
    invoke-direct {v0, v1, v7, v4}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_57b

    invoke-static {v7, v12}, Lcom/android/framework/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57b

    :pswitch_111  #0x39
    invoke-direct {v0, v1, v7, v4}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v12

    if-eqz v12, :cond_57b

    invoke-static {v7, v11}, Lcom/android/framework/protobuf/CodedOutputStream;->computeFixed32Size(II)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57b

    :pswitch_11e  #0x38
    invoke-direct {v0, v1, v7, v4}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_57b

    invoke-static {v7, v14, v15}, Lcom/android/framework/protobuf/CodedOutputStream;->computeFixed64Size(IJ)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57b

    :pswitch_12b  #0x37
    invoke-direct {v0, v1, v7, v4}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_57b

    invoke-static {v1, v8, v9}, Lcom/android/framework/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v11

    invoke-static {v7, v11}, Lcom/android/framework/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57b

    :pswitch_13c  #0x36
    invoke-direct {v0, v1, v7, v4}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_57b

    invoke-static {v1, v8, v9}, Lcom/android/framework/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-static {v7, v11, v12}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57b

    :pswitch_14d  #0x35
    invoke-direct {v0, v1, v7, v4}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_57b

    invoke-static {v1, v8, v9}, Lcom/android/framework/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-static {v7, v11, v12}, Lcom/android/framework/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57b

    :pswitch_15e  #0x34
    invoke-direct {v0, v1, v7, v4}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_57b

    invoke-static {v7, v13}, Lcom/android/framework/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57b

    :pswitch_16b  #0x33
    invoke-direct {v0, v1, v7, v4}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_57b

    const-wide/16 v11, 0x0

    invoke-static {v7, v11, v12}, Lcom/android/framework/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57b

    :pswitch_17a  #0x32
    iget-object v11, v0, Lcom/android/framework/protobuf/MessageSchema;->mapFieldSchema:Lcom/android/framework/protobuf/MapFieldSchema;

    invoke-static {v1, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v12

    invoke-direct {v0, v4}, Lcom/android/framework/protobuf/MessageSchema;->getMapFieldDefaultEntry(I)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v11, v7, v12, v13}, Lcom/android/framework/protobuf/MapFieldSchema;->getSerializedSize(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57b

    :pswitch_18b  #0x31
    nop

    invoke-static {v1, v8, v9}, Lcom/android/framework/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v11

    invoke-direct {v0, v4}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v12

    invoke-static {v7, v11, v12}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeGroupList(ILjava/util/List;Lcom/android/framework/protobuf/Schema;)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57b

    :pswitch_19b  #0x30
    nop

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-static {v11}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeSInt64ListNoTag(Ljava/util/List;)I

    move-result v11

    if-lez v11, :cond_57b

    iget-boolean v12, v0, Lcom/android/framework/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v12, :cond_1b0

    int-to-long v12, v10

    invoke-virtual {v2, v1, v12, v13, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_1b0
    nop

    invoke-static {v7}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v12

    invoke-static {v11}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v12, v11

    add-int/2addr v3, v12

    goto/16 :goto_57b

    :pswitch_1be  #0x2f
    nop

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-static {v11}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeSInt32ListNoTag(Ljava/util/List;)I

    move-result v11

    if-lez v11, :cond_57b

    iget-boolean v12, v0, Lcom/android/framework/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v12, :cond_1d3

    int-to-long v12, v10

    invoke-virtual {v2, v1, v12, v13, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_1d3
    nop

    invoke-static {v7}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v12

    invoke-static {v11}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v12, v11

    add-int/2addr v3, v12

    goto/16 :goto_57b

    :pswitch_1e1  #0x2e
    nop

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-static {v11}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeFixed64ListNoTag(Ljava/util/List;)I

    move-result v11

    if-lez v11, :cond_57b

    iget-boolean v12, v0, Lcom/android/framework/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v12, :cond_1f6

    int-to-long v12, v10

    invoke-virtual {v2, v1, v12, v13, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_1f6
    nop

    invoke-static {v7}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v12

    invoke-static {v11}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v12, v11

    add-int/2addr v3, v12

    goto/16 :goto_57b

    :pswitch_204  #0x2d
    nop

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-static {v11}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeFixed32ListNoTag(Ljava/util/List;)I

    move-result v11

    if-lez v11, :cond_57b

    iget-boolean v12, v0, Lcom/android/framework/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v12, :cond_219

    int-to-long v12, v10

    invoke-virtual {v2, v1, v12, v13, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_219
    nop

    invoke-static {v7}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v12

    invoke-static {v11}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v12, v11

    add-int/2addr v3, v12

    goto/16 :goto_57b

    :pswitch_227  #0x2c
    nop

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-static {v11}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeEnumListNoTag(Ljava/util/List;)I

    move-result v11

    if-lez v11, :cond_57b

    iget-boolean v12, v0, Lcom/android/framework/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v12, :cond_23c

    int-to-long v12, v10

    invoke-virtual {v2, v1, v12, v13, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_23c
    nop

    invoke-static {v7}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v12

    invoke-static {v11}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v12, v11

    add-int/2addr v3, v12

    goto/16 :goto_57b

    :pswitch_24a  #0x2b
    nop

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-static {v11}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeUInt32ListNoTag(Ljava/util/List;)I

    move-result v11

    if-lez v11, :cond_57b

    iget-boolean v12, v0, Lcom/android/framework/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v12, :cond_25f

    int-to-long v12, v10

    invoke-virtual {v2, v1, v12, v13, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_25f
    nop

    invoke-static {v7}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v12

    invoke-static {v11}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v12, v11

    add-int/2addr v3, v12

    goto/16 :goto_57b

    :pswitch_26d  #0x2a
    nop

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-static {v11}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeBoolListNoTag(Ljava/util/List;)I

    move-result v11

    if-lez v11, :cond_57b

    iget-boolean v12, v0, Lcom/android/framework/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v12, :cond_282

    int-to-long v12, v10

    invoke-virtual {v2, v1, v12, v13, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_282
    nop

    invoke-static {v7}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v12

    invoke-static {v11}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v12, v11

    add-int/2addr v3, v12

    goto/16 :goto_57b

    :pswitch_290  #0x29
    nop

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-static {v11}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeFixed32ListNoTag(Ljava/util/List;)I

    move-result v11

    if-lez v11, :cond_57b

    iget-boolean v12, v0, Lcom/android/framework/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v12, :cond_2a5

    int-to-long v12, v10

    invoke-virtual {v2, v1, v12, v13, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_2a5
    nop

    invoke-static {v7}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v12

    invoke-static {v11}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v12, v11

    add-int/2addr v3, v12

    goto/16 :goto_57b

    :pswitch_2b3  #0x28
    nop

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-static {v11}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeFixed64ListNoTag(Ljava/util/List;)I

    move-result v11

    if-lez v11, :cond_57b

    iget-boolean v12, v0, Lcom/android/framework/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v12, :cond_2c8

    int-to-long v12, v10

    invoke-virtual {v2, v1, v12, v13, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_2c8
    nop

    invoke-static {v7}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v12

    invoke-static {v11}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v12, v11

    add-int/2addr v3, v12

    goto/16 :goto_57b

    :pswitch_2d6  #0x27
    nop

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-static {v11}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeInt32ListNoTag(Ljava/util/List;)I

    move-result v11

    if-lez v11, :cond_57b

    iget-boolean v12, v0, Lcom/android/framework/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v12, :cond_2eb

    int-to-long v12, v10

    invoke-virtual {v2, v1, v12, v13, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_2eb
    nop

    invoke-static {v7}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v12

    invoke-static {v11}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v12, v11

    add-int/2addr v3, v12

    goto/16 :goto_57b

    :pswitch_2f9  #0x26
    nop

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-static {v11}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeUInt64ListNoTag(Ljava/util/List;)I

    move-result v11

    if-lez v11, :cond_57b

    iget-boolean v12, v0, Lcom/android/framework/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v12, :cond_30e

    int-to-long v12, v10

    invoke-virtual {v2, v1, v12, v13, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_30e
    nop

    invoke-static {v7}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v12

    invoke-static {v11}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v12, v11

    add-int/2addr v3, v12

    goto/16 :goto_57b

    :pswitch_31c  #0x25
    nop

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-static {v11}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeInt64ListNoTag(Ljava/util/List;)I

    move-result v11

    if-lez v11, :cond_57b

    iget-boolean v12, v0, Lcom/android/framework/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v12, :cond_331

    int-to-long v12, v10

    invoke-virtual {v2, v1, v12, v13, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_331
    nop

    invoke-static {v7}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v12

    invoke-static {v11}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v12, v11

    add-int/2addr v3, v12

    goto/16 :goto_57b

    :pswitch_33f  #0x24
    nop

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-static {v11}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeFixed32ListNoTag(Ljava/util/List;)I

    move-result v11

    if-lez v11, :cond_57b

    iget-boolean v12, v0, Lcom/android/framework/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v12, :cond_354

    int-to-long v12, v10

    invoke-virtual {v2, v1, v12, v13, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_354
    nop

    invoke-static {v7}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v12

    invoke-static {v11}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v12, v11

    add-int/2addr v3, v12

    goto/16 :goto_57b

    :pswitch_362  #0x23
    nop

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-static {v11}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeFixed64ListNoTag(Ljava/util/List;)I

    move-result v11

    if-lez v11, :cond_57b

    iget-boolean v12, v0, Lcom/android/framework/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v12, :cond_377

    int-to-long v12, v10

    invoke-virtual {v2, v1, v12, v13, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_377
    nop

    invoke-static {v7}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v12

    invoke-static {v11}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v12, v11

    add-int/2addr v3, v12

    goto/16 :goto_57b

    :pswitch_385  #0x22
    nop

    invoke-static {v1, v8, v9}, Lcom/android/framework/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v12

    invoke-static {v7, v12, v11}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeSInt64List(ILjava/util/List;Z)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57b

    :pswitch_391  #0x21
    nop

    invoke-static {v1, v8, v9}, Lcom/android/framework/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v12

    invoke-static {v7, v12, v11}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeSInt32List(ILjava/util/List;Z)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57b

    :pswitch_39d  #0x20
    invoke-static {v1, v8, v9}, Lcom/android/framework/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v12

    invoke-static {v7, v12, v11}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeFixed64List(ILjava/util/List;Z)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57b

    :pswitch_3a8  #0x1f
    invoke-static {v1, v8, v9}, Lcom/android/framework/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v12

    invoke-static {v7, v12, v11}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeFixed32List(ILjava/util/List;Z)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57b

    :pswitch_3b3  #0x1e
    nop

    invoke-static {v1, v8, v9}, Lcom/android/framework/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v12

    invoke-static {v7, v12, v11}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeEnumList(ILjava/util/List;Z)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57b

    :pswitch_3bf  #0x1d
    nop

    invoke-static {v1, v8, v9}, Lcom/android/framework/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v12

    invoke-static {v7, v12, v11}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeUInt32List(ILjava/util/List;Z)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57b

    :pswitch_3cb  #0x1c
    nop

    invoke-static {v1, v8, v9}, Lcom/android/framework/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v11

    invoke-static {v7, v11}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeByteStringList(ILjava/util/List;)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57b

    :pswitch_3d7  #0x1b
    nop

    invoke-static {v1, v8, v9}, Lcom/android/framework/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v11

    invoke-direct {v0, v4}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v12

    invoke-static {v7, v11, v12}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeMessageList(ILjava/util/List;Lcom/android/framework/protobuf/Schema;)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57b

    :pswitch_3e7  #0x1a
    invoke-static {v1, v8, v9}, Lcom/android/framework/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v11

    invoke-static {v7, v11}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeStringList(ILjava/util/List;)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57b

    :pswitch_3f2  #0x19
    invoke-static {v1, v8, v9}, Lcom/android/framework/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v12

    invoke-static {v7, v12, v11}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeBoolList(ILjava/util/List;Z)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57b

    :pswitch_3fd  #0x18
    invoke-static {v1, v8, v9}, Lcom/android/framework/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v12

    invoke-static {v7, v12, v11}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeFixed32List(ILjava/util/List;Z)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57b

    :pswitch_408  #0x17
    invoke-static {v1, v8, v9}, Lcom/android/framework/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v12

    invoke-static {v7, v12, v11}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeFixed64List(ILjava/util/List;Z)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57b

    :pswitch_413  #0x16
    nop

    invoke-static {v1, v8, v9}, Lcom/android/framework/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v12

    invoke-static {v7, v12, v11}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeInt32List(ILjava/util/List;Z)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57b

    :pswitch_41f  #0x15
    nop

    invoke-static {v1, v8, v9}, Lcom/android/framework/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v12

    invoke-static {v7, v12, v11}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeUInt64List(ILjava/util/List;Z)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57b

    :pswitch_42b  #0x14
    nop

    invoke-static {v1, v8, v9}, Lcom/android/framework/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v12

    invoke-static {v7, v12, v11}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeInt64List(ILjava/util/List;Z)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57b

    :pswitch_437  #0x13
    invoke-static {v1, v8, v9}, Lcom/android/framework/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v12

    invoke-static {v7, v12, v11}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeFixed32List(ILjava/util/List;Z)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57b

    :pswitch_442  #0x12
    invoke-static {v1, v8, v9}, Lcom/android/framework/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v12

    invoke-static {v7, v12, v11}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeFixed64List(ILjava/util/List;Z)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57b

    :pswitch_44d  #0x11
    invoke-direct {v0, v1, v4}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_57b

    nop

    invoke-static {v1, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/framework/protobuf/MessageLite;

    invoke-direct {v0, v4}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v12

    invoke-static {v7, v11, v12}, Lcom/android/framework/protobuf/CodedOutputStream;->computeGroupSize(ILcom/android/framework/protobuf/MessageLite;Lcom/android/framework/protobuf/Schema;)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57b

    :pswitch_465  #0x10
    invoke-direct {v0, v1, v4}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_57b

    nop

    invoke-static {v1, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-static {v7, v11, v12}, Lcom/android/framework/protobuf/CodedOutputStream;->computeSInt64Size(IJ)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57b

    :pswitch_477  #0xf
    invoke-direct {v0, v1, v4}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_57b

    invoke-static {v1, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v11

    invoke-static {v7, v11}, Lcom/android/framework/protobuf/CodedOutputStream;->computeSInt32Size(II)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57b

    :pswitch_488  #0xe
    invoke-direct {v0, v1, v4}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_57b

    invoke-static {v7, v14, v15}, Lcom/android/framework/protobuf/CodedOutputStream;->computeSFixed64Size(IJ)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57b

    :pswitch_495  #0xd
    invoke-direct {v0, v1, v4}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v12

    if-eqz v12, :cond_57b

    invoke-static {v7, v11}, Lcom/android/framework/protobuf/CodedOutputStream;->computeSFixed32Size(II)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57b

    :pswitch_4a2  #0xc
    invoke-direct {v0, v1, v4}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_57b

    invoke-static {v1, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v11

    invoke-static {v7, v11}, Lcom/android/framework/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57b

    :pswitch_4b3  #0xb
    invoke-direct {v0, v1, v4}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_57b

    invoke-static {v1, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v11

    invoke-static {v7, v11}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57b

    :pswitch_4c4  #0xa
    invoke-direct {v0, v1, v4}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_57b

    invoke-static {v1, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/framework/protobuf/ByteString;

    invoke-static {v7, v11}, Lcom/android/framework/protobuf/CodedOutputStream;->computeBytesSize(ILcom/android/framework/protobuf/ByteString;)I

    move-result v12

    add-int/2addr v3, v12

    goto/16 :goto_57b

    :pswitch_4d7  #0x9
    invoke-direct {v0, v1, v4}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_57b

    invoke-static {v1, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    invoke-direct {v0, v4}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v12

    invoke-static {v7, v11, v12}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeMessage(ILjava/lang/Object;Lcom/android/framework/protobuf/Schema;)I

    move-result v12

    add-int/2addr v3, v12

    goto/16 :goto_57b

    :pswitch_4ec  #0x8
    invoke-direct {v0, v1, v4}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_57b

    invoke-static {v1, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    instance-of v12, v11, Lcom/android/framework/protobuf/ByteString;

    if-eqz v12, :cond_503

    move-object v12, v11

    check-cast v12, Lcom/android/framework/protobuf/ByteString;

    invoke-static {v7, v12}, Lcom/android/framework/protobuf/CodedOutputStream;->computeBytesSize(ILcom/android/framework/protobuf/ByteString;)I

    move-result v12

    add-int/2addr v3, v12

    goto :goto_50b

    :cond_503
    move-object v12, v11

    check-cast v12, Ljava/lang/String;

    invoke-static {v7, v12}, Lcom/android/framework/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v12

    add-int/2addr v3, v12

    :goto_50b
    goto/16 :goto_57b

    :pswitch_50d  #0x7
    invoke-direct {v0, v1, v4}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_57b

    invoke-static {v7, v12}, Lcom/android/framework/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v11

    add-int/2addr v3, v11

    goto :goto_57b

    :pswitch_519  #0x6
    invoke-direct {v0, v1, v4}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v12

    if-eqz v12, :cond_57b

    invoke-static {v7, v11}, Lcom/android/framework/protobuf/CodedOutputStream;->computeFixed32Size(II)I

    move-result v11

    add-int/2addr v3, v11

    goto :goto_57b

    :pswitch_525  #0x5
    invoke-direct {v0, v1, v4}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_57b

    invoke-static {v7, v14, v15}, Lcom/android/framework/protobuf/CodedOutputStream;->computeFixed64Size(IJ)I

    move-result v11

    add-int/2addr v3, v11

    goto :goto_57b

    :pswitch_531  #0x4
    invoke-direct {v0, v1, v4}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_57b

    invoke-static {v1, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v11

    invoke-static {v7, v11}, Lcom/android/framework/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v11

    add-int/2addr v3, v11

    goto :goto_57b

    :pswitch_541  #0x3
    invoke-direct {v0, v1, v4}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_57b

    nop

    invoke-static {v1, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-static {v7, v11, v12}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v11

    add-int/2addr v3, v11

    goto :goto_57b

    :pswitch_552  #0x2
    invoke-direct {v0, v1, v4}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_57b

    invoke-static {v1, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-static {v7, v11, v12}, Lcom/android/framework/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v11

    add-int/2addr v3, v11

    goto :goto_57b

    :pswitch_562  #0x1
    invoke-direct {v0, v1, v4}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_57b

    invoke-static {v7, v13}, Lcom/android/framework/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v11

    add-int/2addr v3, v11

    goto :goto_57b

    :pswitch_56e  #0x0
    invoke-direct {v0, v1, v4}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_57b

    const-wide/16 v11, 0x0

    invoke-static {v7, v11, v12}, Lcom/android/framework/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v11

    add-int/2addr v3, v11

    :cond_57b
    :goto_57b
    add-int/lit8 v4, v4, 0x3

    goto/16 :goto_8

    :cond_57f
    iget-object v4, v0, Lcom/android/framework/protobuf/MessageSchema;->unknownFieldSchema:Lcom/android/framework/protobuf/UnknownFieldSchema;

    invoke-direct {v0, v4, v1}, Lcom/android/framework/protobuf/MessageSchema;->getUnknownFieldsSerializedSize(Lcom/android/framework/protobuf/UnknownFieldSchema;Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v3, v4

    return v3

    nop

    :pswitch_data_588
    .packed-switch 0x0
        :pswitch_56e  #00000000
        :pswitch_562  #00000001
        :pswitch_552  #00000002
        :pswitch_541  #00000003
        :pswitch_531  #00000004
        :pswitch_525  #00000005
        :pswitch_519  #00000006
        :pswitch_50d  #00000007
        :pswitch_4ec  #00000008
        :pswitch_4d7  #00000009
        :pswitch_4c4  #0000000a
        :pswitch_4b3  #0000000b
        :pswitch_4a2  #0000000c
        :pswitch_495  #0000000d
        :pswitch_488  #0000000e
        :pswitch_477  #0000000f
        :pswitch_465  #00000010
        :pswitch_44d  #00000011
        :pswitch_442  #00000012
        :pswitch_437  #00000013
        :pswitch_42b  #00000014
        :pswitch_41f  #00000015
        :pswitch_413  #00000016
        :pswitch_408  #00000017
        :pswitch_3fd  #00000018
        :pswitch_3f2  #00000019
        :pswitch_3e7  #0000001a
        :pswitch_3d7  #0000001b
        :pswitch_3cb  #0000001c
        :pswitch_3bf  #0000001d
        :pswitch_3b3  #0000001e
        :pswitch_3a8  #0000001f
        :pswitch_39d  #00000020
        :pswitch_391  #00000021
        :pswitch_385  #00000022
        :pswitch_362  #00000023
        :pswitch_33f  #00000024
        :pswitch_31c  #00000025
        :pswitch_2f9  #00000026
        :pswitch_2d6  #00000027
        :pswitch_2b3  #00000028
        :pswitch_290  #00000029
        :pswitch_26d  #0000002a
        :pswitch_24a  #0000002b
        :pswitch_227  #0000002c
        :pswitch_204  #0000002d
        :pswitch_1e1  #0000002e
        :pswitch_1be  #0000002f
        :pswitch_19b  #00000030
        :pswitch_18b  #00000031
        :pswitch_17a  #00000032
        :pswitch_16b  #00000033
        :pswitch_15e  #00000034
        :pswitch_14d  #00000035
        :pswitch_13c  #00000036
        :pswitch_12b  #00000037
        :pswitch_11e  #00000038
        :pswitch_111  #00000039
        :pswitch_104  #0000003a
        :pswitch_e3  #0000003b
        :pswitch_ce  #0000003c
        :pswitch_ba  #0000003d
        :pswitch_a9  #0000003e
        :pswitch_98  #0000003f
        :pswitch_8b  #00000040
        :pswitch_7e  #00000041
        :pswitch_6d  #00000042
        :pswitch_5c  #00000043
        :pswitch_44  #00000044
    .end packed-switch
.end method

.method private getUnknownFieldsSerializedSize(Lcom/android/framework/protobuf/UnknownFieldSchema;Ljava/lang/Object;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/framework/protobuf/UnknownFieldSchema<",
            "TUT;TUB;>;TT;)I"
        }
    .end annotation

    invoke-virtual {p1, p2}, Lcom/android/framework/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/UnknownFieldSchema;->getSerializedSize(Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method private static intAt(Ljava/lang/Object;J)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)I"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v0

    return v0
.end method

.method private static isEnforceUtf8(I)Z
    .registers 2

    const/high16 v0, 0x20000000

    and-int/2addr v0, p0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method private isFieldPresent(Ljava/lang/Object;I)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)Z"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/framework/protobuf/MessageSchema;->proto3:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_da

    invoke-direct {p0, p2}, Lcom/android/framework/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-static {v0}, Lcom/android/framework/protobuf/MessageSchema;->type(I)I

    move-result v5

    const-wide/16 v6, 0x0

    packed-switch v5, :pswitch_data_f0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :pswitch_1d  #0x11
    invoke-static {p1, v3, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_24

    move v1, v2

    :cond_24
    return v1

    :pswitch_25  #0x10
    invoke-static {p1, v3, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    cmp-long v5, v8, v6

    if-eqz v5, :cond_2e

    move v1, v2

    :cond_2e
    return v1

    :pswitch_2f  #0xf
    invoke-static {p1, v3, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v5

    if-eqz v5, :cond_36

    move v1, v2

    :cond_36
    return v1

    :pswitch_37  #0xe
    invoke-static {p1, v3, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    cmp-long v5, v8, v6

    if-eqz v5, :cond_40

    move v1, v2

    :cond_40
    return v1

    :pswitch_41  #0xd
    invoke-static {p1, v3, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v5

    if-eqz v5, :cond_48

    move v1, v2

    :cond_48
    return v1

    :pswitch_49  #0xc
    invoke-static {p1, v3, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v5

    if-eqz v5, :cond_50

    move v1, v2

    :cond_50
    return v1

    :pswitch_51  #0xb
    invoke-static {p1, v3, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v5

    if-eqz v5, :cond_58

    move v1, v2

    :cond_58
    return v1

    :pswitch_59  #0xa
    sget-object v1, Lcom/android/framework/protobuf/ByteString;->EMPTY:Lcom/android/framework/protobuf/ByteString;

    invoke-static {p1, v3, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/framework/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v2

    return v1

    :pswitch_65  #0x9
    invoke-static {p1, v3, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_6c

    move v1, v2

    :cond_6c
    return v1

    :pswitch_6d  #0x8
    invoke-static {p1, v3, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    instance-of v5, v1, Ljava/lang/String;

    if-eqz v5, :cond_7e

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    xor-int/2addr v2, v5

    return v2

    :cond_7e
    instance-of v5, v1, Lcom/android/framework/protobuf/ByteString;

    if-eqz v5, :cond_8a

    sget-object v5, Lcom/android/framework/protobuf/ByteString;->EMPTY:Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {v5, v1}, Lcom/android/framework/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v5

    xor-int/2addr v2, v5

    return v2

    :cond_8a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    :pswitch_90  #0x7
    invoke-static {p1, v3, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->getBoolean(Ljava/lang/Object;J)Z

    move-result v1

    return v1

    :pswitch_95  #0x6
    invoke-static {p1, v3, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v5

    if-eqz v5, :cond_9c

    move v1, v2

    :cond_9c
    return v1

    :pswitch_9d  #0x5
    invoke-static {p1, v3, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    cmp-long v5, v8, v6

    if-eqz v5, :cond_a6

    move v1, v2

    :cond_a6
    return v1

    :pswitch_a7  #0x4
    invoke-static {p1, v3, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v5

    if-eqz v5, :cond_ae

    move v1, v2

    :cond_ae
    return v1

    :pswitch_af  #0x3
    invoke-static {p1, v3, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    cmp-long v5, v8, v6

    if-eqz v5, :cond_b8

    move v1, v2

    :cond_b8
    return v1

    :pswitch_b9  #0x2
    invoke-static {p1, v3, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    cmp-long v5, v8, v6

    if-eqz v5, :cond_c2

    move v1, v2

    :cond_c2
    return v1

    :pswitch_c3  #0x1
    invoke-static {p1, v3, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->getFloat(Ljava/lang/Object;J)F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_cd

    move v1, v2

    :cond_cd
    return v1

    :pswitch_ce  #0x0
    invoke-static {p1, v3, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->getDouble(Ljava/lang/Object;J)D

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-eqz v5, :cond_d9

    move v1, v2

    :cond_d9
    return v1

    :cond_da
    invoke-direct {p0, p2}, Lcom/android/framework/protobuf/MessageSchema;->presenceMaskAndOffsetAt(I)I

    move-result v0

    ushr-int/lit8 v3, v0, 0x14

    shl-int v3, v2, v3

    const v4, 0xfffff

    and-int/2addr v4, v0

    int-to-long v4, v4

    invoke-static {p1, v4, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v4

    and-int/2addr v4, v3

    if-eqz v4, :cond_ef

    move v1, v2

    :cond_ef
    return v1

    :pswitch_data_f0
    .packed-switch 0x0
        :pswitch_ce  #00000000
        :pswitch_c3  #00000001
        :pswitch_b9  #00000002
        :pswitch_af  #00000003
        :pswitch_a7  #00000004
        :pswitch_9d  #00000005
        :pswitch_95  #00000006
        :pswitch_90  #00000007
        :pswitch_6d  #00000008
        :pswitch_65  #00000009
        :pswitch_59  #0000000a
        :pswitch_51  #0000000b
        :pswitch_49  #0000000c
        :pswitch_41  #0000000d
        :pswitch_37  #0000000e
        :pswitch_2f  #0000000f
        :pswitch_25  #00000010
        :pswitch_1d  #00000011
    .end packed-switch
.end method

.method private isFieldPresent(Ljava/lang/Object;III)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;III)Z"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/framework/protobuf/MessageSchema;->proto3:Z

    if-eqz v0, :cond_9

    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v0

    return v0

    :cond_9
    and-int v0, p3, p4

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method private static isInitialized(Ljava/lang/Object;ILcom/android/framework/protobuf/Schema;)Z
    .registers 5

    invoke-static {p1}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/android/framework/protobuf/Schema;->isInitialized(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private isListInitialized(Ljava/lang/Object;II)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "II)Z"
        }
    .end annotation

    invoke-static {p2}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_12

    return v2

    :cond_12
    invoke-direct {p0, p3}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v1

    const/4 v3, 0x0

    :goto_17
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2c

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/android/framework/protobuf/Schema;->isInitialized(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_29

    const/4 v2, 0x0

    return v2

    :cond_29
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_2c
    return v2
.end method

.method private isMapInitialized(Ljava/lang/Object;II)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/framework/protobuf/MessageSchema;->mapFieldSchema:Lcom/android/framework/protobuf/MapFieldSchema;

    invoke-static {p2}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-static {p1, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/framework/protobuf/MapFieldSchema;->forMapData(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_16

    return v2

    :cond_16
    invoke-direct {p0, p3}, Lcom/android/framework/protobuf/MessageSchema;->getMapFieldDefaultEntry(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v3, p0, Lcom/android/framework/protobuf/MessageSchema;->mapFieldSchema:Lcom/android/framework/protobuf/MapFieldSchema;

    invoke-interface {v3, v1}, Lcom/android/framework/protobuf/MapFieldSchema;->forMapMetadata(Ljava/lang/Object;)Lcom/android/framework/protobuf/MapEntryLite$Metadata;

    move-result-object v3

    iget-object v4, v3, Lcom/android/framework/protobuf/MapEntryLite$Metadata;->valueType:Lcom/android/framework/protobuf/WireFormat$FieldType;

    invoke-virtual {v4}, Lcom/android/framework/protobuf/WireFormat$FieldType;->getJavaType()Lcom/android/framework/protobuf/WireFormat$JavaType;

    move-result-object v4

    sget-object v5, Lcom/android/framework/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/android/framework/protobuf/WireFormat$JavaType;

    if-eq v4, v5, :cond_2b

    return v2

    :cond_2b
    const/4 v4, 0x0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_34
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_55

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    if-nez v4, :cond_4c

    invoke-static {}, Lcom/android/framework/protobuf/Protobuf;->getInstance()Lcom/android/framework/protobuf/Protobuf;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/framework/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/android/framework/protobuf/Schema;

    move-result-object v4

    :cond_4c
    invoke-interface {v4, v6}, Lcom/android/framework/protobuf/Schema;->isInitialized(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_54

    const/4 v2, 0x0

    return v2

    :cond_54
    goto :goto_34

    :cond_55
    return v2
.end method

.method private isOneofCaseEqual(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)Z"
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/android/framework/protobuf/MessageSchema;->presenceMaskAndOffsetAt(I)I

    move-result v0

    const v1, 0xfffff

    and-int v2, v0, v1

    int-to-long v2, v2

    invoke-static {p1, v2, v3}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v2

    and-int/2addr v1, v0

    int-to-long v3, v1

    invoke-static {p2, v3, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v1

    if-ne v2, v1, :cond_18

    const/4 v1, 0x1

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    return v1
.end method

.method private isOneofPresent(Ljava/lang/Object;II)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)Z"
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/android/framework/protobuf/MessageSchema;->presenceMaskAndOffsetAt(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v1, v0

    int-to-long v1, v1

    invoke-static {p1, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v1

    if-ne v1, p2, :cond_11

    const/4 v1, 0x1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    return v1
.end method

.method private static isRequired(I)Z
    .registers 2

    const/high16 v0, 0x10000000

    and-int/2addr v0, p0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method private static listAt(Ljava/lang/Object;J)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private static longAt(Ljava/lang/Object;J)J
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)J"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private mergeFromHelper(Lcom/android/framework/protobuf/UnknownFieldSchema;Lcom/android/framework/protobuf/ExtensionSchema;Ljava/lang/Object;Lcom/android/framework/protobuf/Reader;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            "ET::",
            "Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite<",
            "TET;>;>(",
            "Lcom/android/framework/protobuf/UnknownFieldSchema<",
            "TUT;TUB;>;",
            "Lcom/android/framework/protobuf/ExtensionSchema<",
            "TET;>;TT;",
            "Lcom/android/framework/protobuf/Reader;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v13, v1

    move-object v14, v2

    :goto_e
    :try_start_e
    invoke-interface/range {p4 .. p4}, Lcom/android/framework/protobuf/Reader;->getFieldNumber()I

    move-result v1

    move v15, v1

    invoke-direct {v8, v15}, Lcom/android/framework/protobuf/MessageSchema;->positionForFieldNumber(I)I

    move-result v1
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_6f6

    move v7, v1

    if-gez v7, :cond_a8

    const v1, 0x7fffffff

    if-ne v15, v1, :cond_36

    iget v1, v8, Lcom/android/framework/protobuf/MessageSchema;->checkInitializedCount:I

    :goto_21
    iget v2, v8, Lcom/android/framework/protobuf/MessageSchema;->repeatedFieldOffsetStart:I

    if-ge v1, v2, :cond_30

    iget-object v2, v8, Lcom/android/framework/protobuf/MessageSchema;->intArray:[I

    aget v2, v2, v1

    invoke-direct {v8, v10, v2, v13, v9}, Lcom/android/framework/protobuf/MessageSchema;->filterMapUnknownEnumValues(Ljava/lang/Object;ILjava/lang/Object;Lcom/android/framework/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    :cond_30
    if-eqz v13, :cond_35

    invoke-virtual {v9, v10, v13}, Lcom/android/framework/protobuf/UnknownFieldSchema;->setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_35
    return-void

    :cond_36
    :try_start_36
    iget-boolean v1, v8, Lcom/android/framework/protobuf/MessageSchema;->hasExtensions:Z

    if-nez v1, :cond_3e

    const/4 v1, 0x0

    move-object/from16 v6, p2

    goto :goto_46

    :cond_3e
    iget-object v1, v8, Lcom/android/framework/protobuf/MessageSchema;->defaultInstance:Lcom/android/framework/protobuf/MessageLite;

    move-object/from16 v6, p2

    invoke-virtual {v6, v12, v1, v15}, Lcom/android/framework/protobuf/ExtensionSchema;->findExtensionByNumber(Lcom/android/framework/protobuf/ExtensionRegistryLite;Lcom/android/framework/protobuf/MessageLite;I)Ljava/lang/Object;

    move-result-object v1
    :try_end_46
    .catchall {:try_start_36 .. :try_end_46} :catchall_6f6

    :goto_46
    move-object/from16 v16, v1

    if-eqz v16, :cond_6e

    if-nez v14, :cond_56

    :try_start_4c
    invoke-virtual/range {p2 .. p3}, Lcom/android/framework/protobuf/ExtensionSchema;->getMutableExtensions(Ljava/lang/Object;)Lcom/android/framework/protobuf/FieldSet;

    move-result-object v1
    :try_end_50
    .catchall {:try_start_4c .. :try_end_50} :catchall_52

    move-object v14, v1

    goto :goto_56

    :catchall_52
    move-exception v0

    move-object v1, v0

    goto/16 :goto_6fa

    :cond_56
    :goto_56
    nop

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, v16

    move-object/from16 v4, p5

    move-object v5, v14

    move-object v6, v13

    move-object/from16 v17, v14

    move v14, v7

    move-object/from16 v7, p1

    :try_start_66
    invoke-virtual/range {v1 .. v7}, Lcom/android/framework/protobuf/ExtensionSchema;->parseExtension(Lcom/android/framework/protobuf/Reader;Ljava/lang/Object;Lcom/android/framework/protobuf/ExtensionRegistryLite;Lcom/android/framework/protobuf/FieldSet;Ljava/lang/Object;Lcom/android/framework/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    move-object/from16 v14, v17

    goto :goto_e

    :cond_6e
    move-object/from16 v17, v14

    move v14, v7

    invoke-virtual {v9, v11}, Lcom/android/framework/protobuf/UnknownFieldSchema;->shouldDiscardUnknownFields(Lcom/android/framework/protobuf/Reader;)Z

    move-result v1

    if-eqz v1, :cond_80

    invoke-interface/range {p4 .. p4}, Lcom/android/framework/protobuf/Reader;->skipField()Z

    move-result v1

    if-eqz v1, :cond_91

    move-object/from16 v14, v17

    goto :goto_e

    :cond_80
    if-nez v13, :cond_87

    invoke-virtual {v9, v10}, Lcom/android/framework/protobuf/UnknownFieldSchema;->getBuilderFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    :cond_87
    invoke-virtual {v9, v13, v11}, Lcom/android/framework/protobuf/UnknownFieldSchema;->mergeOneFieldFrom(Ljava/lang/Object;Lcom/android/framework/protobuf/Reader;)Z

    move-result v1
    :try_end_8b
    .catchall {:try_start_66 .. :try_end_8b} :catchall_6f1

    if-eqz v1, :cond_91

    move-object/from16 v14, v17

    goto/16 :goto_e

    :cond_91
    iget v1, v8, Lcom/android/framework/protobuf/MessageSchema;->checkInitializedCount:I

    :goto_93
    iget v2, v8, Lcom/android/framework/protobuf/MessageSchema;->repeatedFieldOffsetStart:I

    if-ge v1, v2, :cond_a2

    iget-object v2, v8, Lcom/android/framework/protobuf/MessageSchema;->intArray:[I

    aget v2, v2, v1

    invoke-direct {v8, v10, v2, v13, v9}, Lcom/android/framework/protobuf/MessageSchema;->filterMapUnknownEnumValues(Ljava/lang/Object;ILjava/lang/Object;Lcom/android/framework/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v1, v1, 0x1

    goto :goto_93

    :cond_a2
    if-eqz v13, :cond_a7

    invoke-virtual {v9, v10, v13}, Lcom/android/framework/protobuf/UnknownFieldSchema;->setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_a7
    return-void

    :cond_a8
    move-object/from16 v17, v14

    move v14, v7

    :try_start_ab
    invoke-direct {v8, v14}, Lcom/android/framework/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v1
    :try_end_af
    .catchall {:try_start_ab .. :try_end_af} :catchall_6f1

    move v7, v1

    :try_start_b0
    invoke-static {v7}, Lcom/android/framework/protobuf/MessageSchema;->type(I)I

    move-result v1
    :try_end_b4
    .catch Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_b0 .. :try_end_b4} :catch_6a3
    .catchall {:try_start_b0 .. :try_end_b4} :catchall_6f1

    packed-switch v1, :pswitch_data_712

    move v1, v7

    if-nez v13, :cond_685

    :try_start_ba
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/UnknownFieldSchema;->newBuilder()Ljava/lang/Object;

    move-result-object v2
    :try_end_be
    .catch Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_ba .. :try_end_be} :catch_681
    .catchall {:try_start_ba .. :try_end_be} :catchall_6f1

    goto/16 :goto_684

    :pswitch_c0  #0x44
    nop

    :try_start_c1
    invoke-static {v7}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-direct {v8, v14}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v3

    invoke-interface {v11, v3, v12}, Lcom/android/framework/protobuf/Reader;->readGroupBySchemaWithCheck(Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v10, v1, v2, v3}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v8, v10, v15, v14}, Lcom/android/framework/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    move v1, v7

    goto/16 :goto_6a2

    :pswitch_d6  #0x43
    nop

    invoke-static {v7}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/android/framework/protobuf/Reader;->readSInt64()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v10, v1, v2, v3}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v8, v10, v15, v14}, Lcom/android/framework/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    move v1, v7

    goto/16 :goto_6a2

    :pswitch_ec  #0x42
    nop

    invoke-static {v7}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/android/framework/protobuf/Reader;->readSInt32()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v10, v1, v2, v3}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v8, v10, v15, v14}, Lcom/android/framework/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    move v1, v7

    goto/16 :goto_6a2

    :pswitch_102  #0x41
    nop

    invoke-static {v7}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/android/framework/protobuf/Reader;->readSFixed64()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v10, v1, v2, v3}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v8, v10, v15, v14}, Lcom/android/framework/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    move v1, v7

    goto/16 :goto_6a2

    :pswitch_118  #0x40
    nop

    invoke-static {v7}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/android/framework/protobuf/Reader;->readSFixed32()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v10, v1, v2, v3}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v8, v10, v15, v14}, Lcom/android/framework/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    move v1, v7

    goto/16 :goto_6a2

    :pswitch_12e  #0x3f
    invoke-interface/range {p4 .. p4}, Lcom/android/framework/protobuf/Reader;->readEnum()I

    move-result v1

    invoke-direct {v8, v14}, Lcom/android/framework/protobuf/MessageSchema;->getEnumFieldVerifier(I)Lcom/android/framework/protobuf/Internal$EnumVerifier;

    move-result-object v2

    if-eqz v2, :cond_148

    invoke-interface {v2, v1}, Lcom/android/framework/protobuf/Internal$EnumVerifier;->isInRange(I)Z

    move-result v3

    if-eqz v3, :cond_13f

    goto :goto_148

    :cond_13f
    nop

    invoke-static {v15, v1, v13, v9}, Lcom/android/framework/protobuf/SchemaUtil;->storeUnknownEnum(IILjava/lang/Object;Lcom/android/framework/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    move v1, v7

    goto/16 :goto_6a2

    :cond_148
    :goto_148
    invoke-static {v7}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v10, v3, v4, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v8, v10, v15, v14}, Lcom/android/framework/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    move v1, v7

    goto/16 :goto_6a2

    :pswitch_159  #0x3e
    nop

    invoke-static {v7}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/android/framework/protobuf/Reader;->readUInt32()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v10, v1, v2, v3}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v8, v10, v15, v14}, Lcom/android/framework/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    move v1, v7

    goto/16 :goto_6a2

    :pswitch_16f  #0x3d
    invoke-static {v7}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/android/framework/protobuf/Reader;->readBytes()Lcom/android/framework/protobuf/ByteString;

    move-result-object v3

    invoke-static {v10, v1, v2, v3}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v8, v10, v15, v14}, Lcom/android/framework/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    move v1, v7

    goto/16 :goto_6a2

    :pswitch_180  #0x3c
    invoke-direct {v8, v10, v15, v14}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_1a3

    nop

    invoke-static {v7}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-static {v10, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v8, v14}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v2

    invoke-interface {v11, v2, v12}, Lcom/android/framework/protobuf/Reader;->readMessageBySchemaWithCheck(Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/framework/protobuf/Internal;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v7}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-static {v10, v2, v3, v1}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_1b6

    :cond_1a3
    nop

    invoke-static {v7}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-direct {v8, v14}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v3

    invoke-interface {v11, v3, v12}, Lcom/android/framework/protobuf/Reader;->readMessageBySchemaWithCheck(Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v10, v1, v2, v3}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v8, v10, v14}, Lcom/android/framework/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    :goto_1b6
    invoke-direct {v8, v10, v15, v14}, Lcom/android/framework/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    move v1, v7

    goto/16 :goto_6a2

    :pswitch_1bc  #0x3b
    invoke-direct {v8, v10, v7, v11}, Lcom/android/framework/protobuf/MessageSchema;->readString(Ljava/lang/Object;ILcom/android/framework/protobuf/Reader;)V

    invoke-direct {v8, v10, v15, v14}, Lcom/android/framework/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    move v1, v7

    goto/16 :goto_6a2

    :pswitch_1c5  #0x3a
    nop

    invoke-static {v7}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/android/framework/protobuf/Reader;->readBool()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v10, v1, v2, v3}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v8, v10, v15, v14}, Lcom/android/framework/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    move v1, v7

    goto/16 :goto_6a2

    :pswitch_1db  #0x39
    nop

    invoke-static {v7}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/android/framework/protobuf/Reader;->readFixed32()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v10, v1, v2, v3}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v8, v10, v15, v14}, Lcom/android/framework/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    move v1, v7

    goto/16 :goto_6a2

    :pswitch_1f1  #0x38
    nop

    invoke-static {v7}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/android/framework/protobuf/Reader;->readFixed64()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v10, v1, v2, v3}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v8, v10, v15, v14}, Lcom/android/framework/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    move v1, v7

    goto/16 :goto_6a2

    :pswitch_207  #0x37
    nop

    invoke-static {v7}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/android/framework/protobuf/Reader;->readInt32()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v10, v1, v2, v3}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v8, v10, v15, v14}, Lcom/android/framework/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    move v1, v7

    goto/16 :goto_6a2

    :pswitch_21d  #0x36
    nop

    invoke-static {v7}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/android/framework/protobuf/Reader;->readUInt64()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v10, v1, v2, v3}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v8, v10, v15, v14}, Lcom/android/framework/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    move v1, v7

    goto/16 :goto_6a2

    :pswitch_233  #0x35
    nop

    invoke-static {v7}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/android/framework/protobuf/Reader;->readInt64()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v10, v1, v2, v3}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v8, v10, v15, v14}, Lcom/android/framework/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    move v1, v7

    goto/16 :goto_6a2

    :pswitch_249  #0x34
    nop

    invoke-static {v7}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/android/framework/protobuf/Reader;->readFloat()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v10, v1, v2, v3}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v8, v10, v15, v14}, Lcom/android/framework/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    move v1, v7

    goto/16 :goto_6a2

    :pswitch_25f  #0x33
    nop

    invoke-static {v7}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/android/framework/protobuf/Reader;->readDouble()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v10, v1, v2, v3}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v8, v10, v15, v14}, Lcom/android/framework/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    move v1, v7

    goto/16 :goto_6a2

    :pswitch_275  #0x32
    invoke-direct {v8, v14}, Lcom/android/framework/protobuf/MessageSchema;->getMapFieldDefaultEntry(I)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move v3, v14

    move-object/from16 v5, p5

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/framework/protobuf/MessageSchema;->mergeMap(Ljava/lang/Object;ILjava/lang/Object;Lcom/android/framework/protobuf/ExtensionRegistryLite;Lcom/android/framework/protobuf/Reader;)V
    :try_end_285
    .catch Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_c1 .. :try_end_285} :catch_288
    .catchall {:try_start_c1 .. :try_end_285} :catchall_6f1

    move v1, v7

    goto/16 :goto_6a2

    :catch_288
    move-exception v0

    move-object v2, v0

    move v1, v7

    goto/16 :goto_6a6

    :pswitch_28d  #0x31
    nop

    :try_start_28e
    invoke-static {v7}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-direct {v8, v14}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v6
    :try_end_296
    .catch Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_28e .. :try_end_296} :catch_2a7
    .catchall {:try_start_28e .. :try_end_296} :catchall_6f1

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v5, p4

    move/from16 v16, v7

    move-object/from16 v7, p5

    :try_start_2a0
    invoke-direct/range {v1 .. v7}, Lcom/android/framework/protobuf/MessageSchema;->readGroupList(Ljava/lang/Object;JLcom/android/framework/protobuf/Reader;Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V

    move/from16 v1, v16

    goto/16 :goto_6a2

    :catch_2a7
    move-exception v0

    move-object v2, v0

    move v1, v7

    goto/16 :goto_6a6

    :pswitch_2ac  #0x30
    move/from16 v16, v7

    iget-object v1, v8, Lcom/android/framework/protobuf/MessageSchema;->listFieldSchema:Lcom/android/framework/protobuf/ListFieldSchema;

    invoke-static/range {v16 .. v16}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/android/framework/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v11, v1}, Lcom/android/framework/protobuf/Reader;->readSInt64List(Ljava/util/List;)V

    move/from16 v1, v16

    goto/16 :goto_6a2

    :pswitch_2bf  #0x2f
    move/from16 v16, v7

    iget-object v1, v8, Lcom/android/framework/protobuf/MessageSchema;->listFieldSchema:Lcom/android/framework/protobuf/ListFieldSchema;

    invoke-static/range {v16 .. v16}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/android/framework/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v11, v1}, Lcom/android/framework/protobuf/Reader;->readSInt32List(Ljava/util/List;)V

    move/from16 v1, v16

    goto/16 :goto_6a2

    :pswitch_2d2  #0x2e
    move/from16 v16, v7

    iget-object v1, v8, Lcom/android/framework/protobuf/MessageSchema;->listFieldSchema:Lcom/android/framework/protobuf/ListFieldSchema;

    invoke-static/range {v16 .. v16}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/android/framework/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v11, v1}, Lcom/android/framework/protobuf/Reader;->readSFixed64List(Ljava/util/List;)V

    move/from16 v1, v16

    goto/16 :goto_6a2

    :pswitch_2e5  #0x2d
    move/from16 v16, v7

    iget-object v1, v8, Lcom/android/framework/protobuf/MessageSchema;->listFieldSchema:Lcom/android/framework/protobuf/ListFieldSchema;

    invoke-static/range {v16 .. v16}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/android/framework/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v11, v1}, Lcom/android/framework/protobuf/Reader;->readSFixed32List(Ljava/util/List;)V

    move/from16 v1, v16

    goto/16 :goto_6a2

    :pswitch_2f8  #0x2c
    move/from16 v16, v7

    iget-object v1, v8, Lcom/android/framework/protobuf/MessageSchema;->listFieldSchema:Lcom/android/framework/protobuf/ListFieldSchema;

    invoke-static/range {v16 .. v16}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/android/framework/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v11, v1}, Lcom/android/framework/protobuf/Reader;->readEnumList(Ljava/util/List;)V

    nop

    invoke-direct {v8, v14}, Lcom/android/framework/protobuf/MessageSchema;->getEnumFieldVerifier(I)Lcom/android/framework/protobuf/Internal$EnumVerifier;

    move-result-object v2

    invoke-static {v15, v1, v2, v13, v9}, Lcom/android/framework/protobuf/SchemaUtil;->filterUnknownEnumList(ILjava/util/List;Lcom/android/framework/protobuf/Internal$EnumVerifier;Ljava/lang/Object;Lcom/android/framework/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    move/from16 v1, v16

    goto/16 :goto_6a2

    :pswitch_315  #0x2b
    move/from16 v16, v7

    iget-object v1, v8, Lcom/android/framework/protobuf/MessageSchema;->listFieldSchema:Lcom/android/framework/protobuf/ListFieldSchema;

    invoke-static/range {v16 .. v16}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/android/framework/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v11, v1}, Lcom/android/framework/protobuf/Reader;->readUInt32List(Ljava/util/List;)V

    move/from16 v1, v16

    goto/16 :goto_6a2

    :pswitch_328  #0x2a
    move/from16 v16, v7

    iget-object v1, v8, Lcom/android/framework/protobuf/MessageSchema;->listFieldSchema:Lcom/android/framework/protobuf/ListFieldSchema;

    invoke-static/range {v16 .. v16}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/android/framework/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v11, v1}, Lcom/android/framework/protobuf/Reader;->readBoolList(Ljava/util/List;)V

    move/from16 v1, v16

    goto/16 :goto_6a2

    :pswitch_33b  #0x29
    move/from16 v16, v7

    iget-object v1, v8, Lcom/android/framework/protobuf/MessageSchema;->listFieldSchema:Lcom/android/framework/protobuf/ListFieldSchema;

    invoke-static/range {v16 .. v16}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/android/framework/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v11, v1}, Lcom/android/framework/protobuf/Reader;->readFixed32List(Ljava/util/List;)V

    move/from16 v1, v16

    goto/16 :goto_6a2

    :pswitch_34e  #0x28
    move/from16 v16, v7

    iget-object v1, v8, Lcom/android/framework/protobuf/MessageSchema;->listFieldSchema:Lcom/android/framework/protobuf/ListFieldSchema;

    invoke-static/range {v16 .. v16}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/android/framework/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v11, v1}, Lcom/android/framework/protobuf/Reader;->readFixed64List(Ljava/util/List;)V

    move/from16 v1, v16

    goto/16 :goto_6a2

    :pswitch_361  #0x27
    move/from16 v16, v7

    iget-object v1, v8, Lcom/android/framework/protobuf/MessageSchema;->listFieldSchema:Lcom/android/framework/protobuf/ListFieldSchema;

    invoke-static/range {v16 .. v16}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/android/framework/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v11, v1}, Lcom/android/framework/protobuf/Reader;->readInt32List(Ljava/util/List;)V

    move/from16 v1, v16

    goto/16 :goto_6a2

    :pswitch_374  #0x26
    move/from16 v16, v7

    iget-object v1, v8, Lcom/android/framework/protobuf/MessageSchema;->listFieldSchema:Lcom/android/framework/protobuf/ListFieldSchema;

    invoke-static/range {v16 .. v16}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/android/framework/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v11, v1}, Lcom/android/framework/protobuf/Reader;->readUInt64List(Ljava/util/List;)V

    move/from16 v1, v16

    goto/16 :goto_6a2

    :pswitch_387  #0x25
    move/from16 v16, v7

    iget-object v1, v8, Lcom/android/framework/protobuf/MessageSchema;->listFieldSchema:Lcom/android/framework/protobuf/ListFieldSchema;

    invoke-static/range {v16 .. v16}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/android/framework/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v11, v1}, Lcom/android/framework/protobuf/Reader;->readInt64List(Ljava/util/List;)V

    move/from16 v1, v16

    goto/16 :goto_6a2

    :pswitch_39a  #0x24
    move/from16 v16, v7

    iget-object v1, v8, Lcom/android/framework/protobuf/MessageSchema;->listFieldSchema:Lcom/android/framework/protobuf/ListFieldSchema;

    invoke-static/range {v16 .. v16}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/android/framework/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v11, v1}, Lcom/android/framework/protobuf/Reader;->readFloatList(Ljava/util/List;)V

    move/from16 v1, v16

    goto/16 :goto_6a2

    :pswitch_3ad  #0x23
    move/from16 v16, v7

    iget-object v1, v8, Lcom/android/framework/protobuf/MessageSchema;->listFieldSchema:Lcom/android/framework/protobuf/ListFieldSchema;

    invoke-static/range {v16 .. v16}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/android/framework/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v11, v1}, Lcom/android/framework/protobuf/Reader;->readDoubleList(Ljava/util/List;)V

    move/from16 v1, v16

    goto/16 :goto_6a2

    :pswitch_3c0  #0x22
    move/from16 v16, v7

    iget-object v1, v8, Lcom/android/framework/protobuf/MessageSchema;->listFieldSchema:Lcom/android/framework/protobuf/ListFieldSchema;

    invoke-static/range {v16 .. v16}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/android/framework/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v11, v1}, Lcom/android/framework/protobuf/Reader;->readSInt64List(Ljava/util/List;)V

    move/from16 v1, v16

    goto/16 :goto_6a2

    :pswitch_3d3  #0x21
    move/from16 v16, v7

    iget-object v1, v8, Lcom/android/framework/protobuf/MessageSchema;->listFieldSchema:Lcom/android/framework/protobuf/ListFieldSchema;

    invoke-static/range {v16 .. v16}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/android/framework/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v11, v1}, Lcom/android/framework/protobuf/Reader;->readSInt32List(Ljava/util/List;)V

    move/from16 v1, v16

    goto/16 :goto_6a2

    :pswitch_3e6  #0x20
    move/from16 v16, v7

    iget-object v1, v8, Lcom/android/framework/protobuf/MessageSchema;->listFieldSchema:Lcom/android/framework/protobuf/ListFieldSchema;

    invoke-static/range {v16 .. v16}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/android/framework/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v11, v1}, Lcom/android/framework/protobuf/Reader;->readSFixed64List(Ljava/util/List;)V

    move/from16 v1, v16

    goto/16 :goto_6a2

    :pswitch_3f9  #0x1f
    move/from16 v16, v7

    iget-object v1, v8, Lcom/android/framework/protobuf/MessageSchema;->listFieldSchema:Lcom/android/framework/protobuf/ListFieldSchema;

    invoke-static/range {v16 .. v16}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/android/framework/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v11, v1}, Lcom/android/framework/protobuf/Reader;->readSFixed32List(Ljava/util/List;)V

    move/from16 v1, v16

    goto/16 :goto_6a2

    :pswitch_40c  #0x1e
    move/from16 v16, v7

    iget-object v1, v8, Lcom/android/framework/protobuf/MessageSchema;->listFieldSchema:Lcom/android/framework/protobuf/ListFieldSchema;

    invoke-static/range {v16 .. v16}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/android/framework/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v11, v1}, Lcom/android/framework/protobuf/Reader;->readEnumList(Ljava/util/List;)V

    nop

    invoke-direct {v8, v14}, Lcom/android/framework/protobuf/MessageSchema;->getEnumFieldVerifier(I)Lcom/android/framework/protobuf/Internal$EnumVerifier;

    move-result-object v2

    invoke-static {v15, v1, v2, v13, v9}, Lcom/android/framework/protobuf/SchemaUtil;->filterUnknownEnumList(ILjava/util/List;Lcom/android/framework/protobuf/Internal$EnumVerifier;Ljava/lang/Object;Lcom/android/framework/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    move/from16 v1, v16

    goto/16 :goto_6a2

    :pswitch_429  #0x1d
    move/from16 v16, v7

    iget-object v1, v8, Lcom/android/framework/protobuf/MessageSchema;->listFieldSchema:Lcom/android/framework/protobuf/ListFieldSchema;

    invoke-static/range {v16 .. v16}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/android/framework/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v11, v1}, Lcom/android/framework/protobuf/Reader;->readUInt32List(Ljava/util/List;)V

    move/from16 v1, v16

    goto/16 :goto_6a2

    :pswitch_43c  #0x1c
    move/from16 v16, v7

    iget-object v1, v8, Lcom/android/framework/protobuf/MessageSchema;->listFieldSchema:Lcom/android/framework/protobuf/ListFieldSchema;

    invoke-static/range {v16 .. v16}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/android/framework/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v11, v1}, Lcom/android/framework/protobuf/Reader;->readBytesList(Ljava/util/List;)V

    move/from16 v1, v16

    goto/16 :goto_6a2

    :pswitch_44f  #0x1b
    move/from16 v16, v7

    invoke-direct {v8, v14}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v5

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move/from16 v3, v16

    move-object/from16 v4, p4

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/framework/protobuf/MessageSchema;->readMessageList(Ljava/lang/Object;ILcom/android/framework/protobuf/Reader;Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V
    :try_end_462
    .catch Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_2a0 .. :try_end_462} :catch_466
    .catchall {:try_start_2a0 .. :try_end_462} :catchall_6f1

    move/from16 v1, v16

    goto/16 :goto_6a2

    :catch_466
    move-exception v0

    move-object v2, v0

    move/from16 v1, v16

    goto/16 :goto_6a6

    :pswitch_46c  #0x1a
    move/from16 v16, v7

    move/from16 v1, v16

    :try_start_470
    invoke-direct {v8, v10, v1, v11}, Lcom/android/framework/protobuf/MessageSchema;->readStringList(Ljava/lang/Object;ILcom/android/framework/protobuf/Reader;)V

    goto/16 :goto_6a2

    :pswitch_475  #0x19
    move v1, v7

    iget-object v2, v8, Lcom/android/framework/protobuf/MessageSchema;->listFieldSchema:Lcom/android/framework/protobuf/ListFieldSchema;

    invoke-static {v1}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-virtual {v2, v10, v3, v4}, Lcom/android/framework/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    invoke-interface {v11, v2}, Lcom/android/framework/protobuf/Reader;->readBoolList(Ljava/util/List;)V

    goto/16 :goto_6a2

    :pswitch_485  #0x18
    move v1, v7

    iget-object v2, v8, Lcom/android/framework/protobuf/MessageSchema;->listFieldSchema:Lcom/android/framework/protobuf/ListFieldSchema;

    invoke-static {v1}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-virtual {v2, v10, v3, v4}, Lcom/android/framework/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    invoke-interface {v11, v2}, Lcom/android/framework/protobuf/Reader;->readFixed32List(Ljava/util/List;)V

    goto/16 :goto_6a2

    :pswitch_495  #0x17
    move v1, v7

    iget-object v2, v8, Lcom/android/framework/protobuf/MessageSchema;->listFieldSchema:Lcom/android/framework/protobuf/ListFieldSchema;

    invoke-static {v1}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-virtual {v2, v10, v3, v4}, Lcom/android/framework/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    invoke-interface {v11, v2}, Lcom/android/framework/protobuf/Reader;->readFixed64List(Ljava/util/List;)V

    goto/16 :goto_6a2

    :pswitch_4a5  #0x16
    move v1, v7

    iget-object v2, v8, Lcom/android/framework/protobuf/MessageSchema;->listFieldSchema:Lcom/android/framework/protobuf/ListFieldSchema;

    invoke-static {v1}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-virtual {v2, v10, v3, v4}, Lcom/android/framework/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    invoke-interface {v11, v2}, Lcom/android/framework/protobuf/Reader;->readInt32List(Ljava/util/List;)V

    goto/16 :goto_6a2

    :pswitch_4b5  #0x15
    move v1, v7

    iget-object v2, v8, Lcom/android/framework/protobuf/MessageSchema;->listFieldSchema:Lcom/android/framework/protobuf/ListFieldSchema;

    invoke-static {v1}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-virtual {v2, v10, v3, v4}, Lcom/android/framework/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    invoke-interface {v11, v2}, Lcom/android/framework/protobuf/Reader;->readUInt64List(Ljava/util/List;)V

    goto/16 :goto_6a2

    :pswitch_4c5  #0x14
    move v1, v7

    iget-object v2, v8, Lcom/android/framework/protobuf/MessageSchema;->listFieldSchema:Lcom/android/framework/protobuf/ListFieldSchema;

    invoke-static {v1}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-virtual {v2, v10, v3, v4}, Lcom/android/framework/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    invoke-interface {v11, v2}, Lcom/android/framework/protobuf/Reader;->readInt64List(Ljava/util/List;)V

    goto/16 :goto_6a2

    :pswitch_4d5  #0x13
    move v1, v7

    iget-object v2, v8, Lcom/android/framework/protobuf/MessageSchema;->listFieldSchema:Lcom/android/framework/protobuf/ListFieldSchema;

    invoke-static {v1}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-virtual {v2, v10, v3, v4}, Lcom/android/framework/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    invoke-interface {v11, v2}, Lcom/android/framework/protobuf/Reader;->readFloatList(Ljava/util/List;)V

    goto/16 :goto_6a2

    :pswitch_4e5  #0x12
    move v1, v7

    iget-object v2, v8, Lcom/android/framework/protobuf/MessageSchema;->listFieldSchema:Lcom/android/framework/protobuf/ListFieldSchema;

    invoke-static {v1}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-virtual {v2, v10, v3, v4}, Lcom/android/framework/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    invoke-interface {v11, v2}, Lcom/android/framework/protobuf/Reader;->readDoubleList(Ljava/util/List;)V

    goto/16 :goto_6a2

    :pswitch_4f5  #0x11
    move v1, v7

    invoke-direct {v8, v10, v14}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_51a

    nop

    invoke-static {v1}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-static {v10, v2, v3}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v8, v14}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v3

    invoke-interface {v11, v3, v12}, Lcom/android/framework/protobuf/Reader;->readGroupBySchemaWithCheck(Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/framework/protobuf/Internal;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-static {v10, v3, v4, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_6a2

    :cond_51a
    nop

    invoke-static {v1}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-direct {v8, v14}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v4

    invoke-interface {v11, v4, v12}, Lcom/android/framework/protobuf/Reader;->readGroupBySchemaWithCheck(Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v10, v2, v3, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v8, v10, v14}, Lcom/android/framework/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_6a2

    :pswitch_52f  #0x10
    move v1, v7

    invoke-static {v1}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-interface/range {p4 .. p4}, Lcom/android/framework/protobuf/Reader;->readSInt64()J

    move-result-wide v4

    invoke-static {v10, v2, v3, v4, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    invoke-direct {v8, v10, v14}, Lcom/android/framework/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_6a2

    :pswitch_540  #0xf
    move v1, v7

    invoke-static {v1}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-interface/range {p4 .. p4}, Lcom/android/framework/protobuf/Reader;->readSInt32()I

    move-result v4

    invoke-static {v10, v2, v3, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    invoke-direct {v8, v10, v14}, Lcom/android/framework/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_6a2

    :pswitch_551  #0xe
    move v1, v7

    invoke-static {v1}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-interface/range {p4 .. p4}, Lcom/android/framework/protobuf/Reader;->readSFixed64()J

    move-result-wide v4

    invoke-static {v10, v2, v3, v4, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    invoke-direct {v8, v10, v14}, Lcom/android/framework/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_6a2

    :pswitch_562  #0xd
    move v1, v7

    invoke-static {v1}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-interface/range {p4 .. p4}, Lcom/android/framework/protobuf/Reader;->readSFixed32()I

    move-result v4

    invoke-static {v10, v2, v3, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    invoke-direct {v8, v10, v14}, Lcom/android/framework/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_6a2

    :pswitch_573  #0xc
    move v1, v7

    invoke-interface/range {p4 .. p4}, Lcom/android/framework/protobuf/Reader;->readEnum()I

    move-result v2

    invoke-direct {v8, v14}, Lcom/android/framework/protobuf/MessageSchema;->getEnumFieldVerifier(I)Lcom/android/framework/protobuf/Internal$EnumVerifier;

    move-result-object v3

    if-eqz v3, :cond_58d

    invoke-interface {v3, v2}, Lcom/android/framework/protobuf/Internal$EnumVerifier;->isInRange(I)Z

    move-result v4

    if-eqz v4, :cond_585

    goto :goto_58d

    :cond_585
    nop

    invoke-static {v15, v2, v13, v9}, Lcom/android/framework/protobuf/SchemaUtil;->storeUnknownEnum(IILjava/lang/Object;Lcom/android/framework/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v4

    move-object v13, v4

    goto/16 :goto_6a2

    :cond_58d
    :goto_58d
    invoke-static {v1}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v4

    invoke-static {v10, v4, v5, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    invoke-direct {v8, v10, v14}, Lcom/android/framework/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_6a2

    :pswitch_599  #0xb
    move v1, v7

    invoke-static {v1}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-interface/range {p4 .. p4}, Lcom/android/framework/protobuf/Reader;->readUInt32()I

    move-result v4

    invoke-static {v10, v2, v3, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    invoke-direct {v8, v10, v14}, Lcom/android/framework/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_6a2

    :pswitch_5aa  #0xa
    move v1, v7

    invoke-static {v1}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-interface/range {p4 .. p4}, Lcom/android/framework/protobuf/Reader;->readBytes()Lcom/android/framework/protobuf/ByteString;

    move-result-object v4

    invoke-static {v10, v2, v3, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v8, v10, v14}, Lcom/android/framework/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_6a2

    :pswitch_5bb  #0x9
    move v1, v7

    invoke-direct {v8, v10, v14}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_5e0

    nop

    invoke-static {v1}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-static {v10, v2, v3}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v8, v14}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v3

    invoke-interface {v11, v3, v12}, Lcom/android/framework/protobuf/Reader;->readMessageBySchemaWithCheck(Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/framework/protobuf/Internal;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-static {v10, v3, v4, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_6a2

    :cond_5e0
    nop

    invoke-static {v1}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-direct {v8, v14}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v4

    invoke-interface {v11, v4, v12}, Lcom/android/framework/protobuf/Reader;->readMessageBySchemaWithCheck(Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v10, v2, v3, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v8, v10, v14}, Lcom/android/framework/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_6a2

    :pswitch_5f5  #0x8
    move v1, v7

    invoke-direct {v8, v10, v1, v11}, Lcom/android/framework/protobuf/MessageSchema;->readString(Ljava/lang/Object;ILcom/android/framework/protobuf/Reader;)V

    invoke-direct {v8, v10, v14}, Lcom/android/framework/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_6a2

    :pswitch_5fe  #0x7
    move v1, v7

    invoke-static {v1}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-interface/range {p4 .. p4}, Lcom/android/framework/protobuf/Reader;->readBool()Z

    move-result v4

    invoke-static {v10, v2, v3, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putBoolean(Ljava/lang/Object;JZ)V

    invoke-direct {v8, v10, v14}, Lcom/android/framework/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_6a2

    :pswitch_60f  #0x6
    move v1, v7

    invoke-static {v1}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-interface/range {p4 .. p4}, Lcom/android/framework/protobuf/Reader;->readFixed32()I

    move-result v4

    invoke-static {v10, v2, v3, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    invoke-direct {v8, v10, v14}, Lcom/android/framework/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_6a2

    :pswitch_620  #0x5
    move v1, v7

    invoke-static {v1}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-interface/range {p4 .. p4}, Lcom/android/framework/protobuf/Reader;->readFixed64()J

    move-result-wide v4

    invoke-static {v10, v2, v3, v4, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    invoke-direct {v8, v10, v14}, Lcom/android/framework/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_6a2

    :pswitch_631  #0x4
    move v1, v7

    invoke-static {v1}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-interface/range {p4 .. p4}, Lcom/android/framework/protobuf/Reader;->readInt32()I

    move-result v4

    invoke-static {v10, v2, v3, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    invoke-direct {v8, v10, v14}, Lcom/android/framework/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto :goto_6a2

    :pswitch_641  #0x3
    move v1, v7

    invoke-static {v1}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-interface/range {p4 .. p4}, Lcom/android/framework/protobuf/Reader;->readUInt64()J

    move-result-wide v4

    invoke-static {v10, v2, v3, v4, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    invoke-direct {v8, v10, v14}, Lcom/android/framework/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto :goto_6a2

    :pswitch_651  #0x2
    move v1, v7

    invoke-static {v1}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-interface/range {p4 .. p4}, Lcom/android/framework/protobuf/Reader;->readInt64()J

    move-result-wide v4

    invoke-static {v10, v2, v3, v4, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    invoke-direct {v8, v10, v14}, Lcom/android/framework/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto :goto_6a2

    :pswitch_661  #0x1
    move v1, v7

    invoke-static {v1}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-interface/range {p4 .. p4}, Lcom/android/framework/protobuf/Reader;->readFloat()F

    move-result v4

    invoke-static {v10, v2, v3, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putFloat(Ljava/lang/Object;JF)V

    invoke-direct {v8, v10, v14}, Lcom/android/framework/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto :goto_6a2

    :pswitch_671  #0x0
    move v1, v7

    invoke-static {v1}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-interface/range {p4 .. p4}, Lcom/android/framework/protobuf/Reader;->readDouble()D

    move-result-wide v4

    invoke-static {v10, v2, v3, v4, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->putDouble(Ljava/lang/Object;JD)V

    invoke-direct {v8, v10, v14}, Lcom/android/framework/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto :goto_6a2

    :catch_681
    move-exception v0

    move-object v2, v0

    goto :goto_6a6

    :goto_684
    move-object v13, v2

    :cond_685
    invoke-virtual {v9, v13, v11}, Lcom/android/framework/protobuf/UnknownFieldSchema;->mergeOneFieldFrom(Ljava/lang/Object;Lcom/android/framework/protobuf/Reader;)Z

    move-result v2
    :try_end_689
    .catch Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_470 .. :try_end_689} :catch_681
    .catchall {:try_start_470 .. :try_end_689} :catchall_6f1

    if-nez v2, :cond_6a2

    iget v2, v8, Lcom/android/framework/protobuf/MessageSchema;->checkInitializedCount:I

    :goto_68d
    iget v3, v8, Lcom/android/framework/protobuf/MessageSchema;->repeatedFieldOffsetStart:I

    if-ge v2, v3, :cond_69c

    iget-object v3, v8, Lcom/android/framework/protobuf/MessageSchema;->intArray:[I

    aget v3, v3, v2

    invoke-direct {v8, v10, v3, v13, v9}, Lcom/android/framework/protobuf/MessageSchema;->filterMapUnknownEnumValues(Ljava/lang/Object;ILjava/lang/Object;Lcom/android/framework/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v2, v2, 0x1

    goto :goto_68d

    :cond_69c
    if-eqz v13, :cond_6a1

    invoke-virtual {v9, v10, v13}, Lcom/android/framework/protobuf/UnknownFieldSchema;->setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6a1
    return-void

    :cond_6a2
    :goto_6a2
    goto :goto_6ed

    :catch_6a3
    move-exception v0

    move v1, v7

    move-object v2, v0

    :goto_6a6
    :try_start_6a6
    invoke-virtual {v9, v11}, Lcom/android/framework/protobuf/UnknownFieldSchema;->shouldDiscardUnknownFields(Lcom/android/framework/protobuf/Reader;)Z

    move-result v3

    if-eqz v3, :cond_6c9

    invoke-interface/range {p4 .. p4}, Lcom/android/framework/protobuf/Reader;->skipField()Z

    move-result v3
    :try_end_6b0
    .catchall {:try_start_6a6 .. :try_end_6b0} :catchall_6f1

    if-nez v3, :cond_6ed

    iget v3, v8, Lcom/android/framework/protobuf/MessageSchema;->checkInitializedCount:I

    :goto_6b4
    iget v4, v8, Lcom/android/framework/protobuf/MessageSchema;->repeatedFieldOffsetStart:I

    if-ge v3, v4, :cond_6c3

    iget-object v4, v8, Lcom/android/framework/protobuf/MessageSchema;->intArray:[I

    aget v4, v4, v3

    invoke-direct {v8, v10, v4, v13, v9}, Lcom/android/framework/protobuf/MessageSchema;->filterMapUnknownEnumValues(Ljava/lang/Object;ILjava/lang/Object;Lcom/android/framework/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v3, v3, 0x1

    goto :goto_6b4

    :cond_6c3
    if-eqz v13, :cond_6c8

    invoke-virtual {v9, v10, v13}, Lcom/android/framework/protobuf/UnknownFieldSchema;->setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6c8
    return-void

    :cond_6c9
    if-nez v13, :cond_6d0

    :try_start_6cb
    invoke-virtual {v9, v10}, Lcom/android/framework/protobuf/UnknownFieldSchema;->getBuilderFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    :cond_6d0
    invoke-virtual {v9, v13, v11}, Lcom/android/framework/protobuf/UnknownFieldSchema;->mergeOneFieldFrom(Ljava/lang/Object;Lcom/android/framework/protobuf/Reader;)Z

    move-result v3
    :try_end_6d4
    .catchall {:try_start_6cb .. :try_end_6d4} :catchall_6f1

    if-nez v3, :cond_6ed

    iget v3, v8, Lcom/android/framework/protobuf/MessageSchema;->checkInitializedCount:I

    :goto_6d8
    iget v4, v8, Lcom/android/framework/protobuf/MessageSchema;->repeatedFieldOffsetStart:I

    if-ge v3, v4, :cond_6e7

    iget-object v4, v8, Lcom/android/framework/protobuf/MessageSchema;->intArray:[I

    aget v4, v4, v3

    invoke-direct {v8, v10, v4, v13, v9}, Lcom/android/framework/protobuf/MessageSchema;->filterMapUnknownEnumValues(Ljava/lang/Object;ILjava/lang/Object;Lcom/android/framework/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v3, v3, 0x1

    goto :goto_6d8

    :cond_6e7
    if-eqz v13, :cond_6ec

    invoke-virtual {v9, v10, v13}, Lcom/android/framework/protobuf/UnknownFieldSchema;->setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6ec
    return-void

    :cond_6ed
    :goto_6ed
    move-object/from16 v14, v17

    goto/16 :goto_e

    :catchall_6f1
    move-exception v0

    move-object v1, v0

    move-object/from16 v14, v17

    goto :goto_6fa

    :catchall_6f6
    move-exception v0

    move-object/from16 v17, v14

    move-object v1, v0

    :goto_6fa
    iget v2, v8, Lcom/android/framework/protobuf/MessageSchema;->checkInitializedCount:I

    :goto_6fc
    iget v3, v8, Lcom/android/framework/protobuf/MessageSchema;->repeatedFieldOffsetStart:I

    if-ge v2, v3, :cond_70b

    iget-object v3, v8, Lcom/android/framework/protobuf/MessageSchema;->intArray:[I

    aget v3, v3, v2

    invoke-direct {v8, v10, v3, v13, v9}, Lcom/android/framework/protobuf/MessageSchema;->filterMapUnknownEnumValues(Ljava/lang/Object;ILjava/lang/Object;Lcom/android/framework/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v2, v2, 0x1

    goto :goto_6fc

    :cond_70b
    if-eqz v13, :cond_710

    invoke-virtual {v9, v10, v13}, Lcom/android/framework/protobuf/UnknownFieldSchema;->setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_710
    throw v1

    nop

    :pswitch_data_712
    .packed-switch 0x0
        :pswitch_671  #00000000
        :pswitch_661  #00000001
        :pswitch_651  #00000002
        :pswitch_641  #00000003
        :pswitch_631  #00000004
        :pswitch_620  #00000005
        :pswitch_60f  #00000006
        :pswitch_5fe  #00000007
        :pswitch_5f5  #00000008
        :pswitch_5bb  #00000009
        :pswitch_5aa  #0000000a
        :pswitch_599  #0000000b
        :pswitch_573  #0000000c
        :pswitch_562  #0000000d
        :pswitch_551  #0000000e
        :pswitch_540  #0000000f
        :pswitch_52f  #00000010
        :pswitch_4f5  #00000011
        :pswitch_4e5  #00000012
        :pswitch_4d5  #00000013
        :pswitch_4c5  #00000014
        :pswitch_4b5  #00000015
        :pswitch_4a5  #00000016
        :pswitch_495  #00000017
        :pswitch_485  #00000018
        :pswitch_475  #00000019
        :pswitch_46c  #0000001a
        :pswitch_44f  #0000001b
        :pswitch_43c  #0000001c
        :pswitch_429  #0000001d
        :pswitch_40c  #0000001e
        :pswitch_3f9  #0000001f
        :pswitch_3e6  #00000020
        :pswitch_3d3  #00000021
        :pswitch_3c0  #00000022
        :pswitch_3ad  #00000023
        :pswitch_39a  #00000024
        :pswitch_387  #00000025
        :pswitch_374  #00000026
        :pswitch_361  #00000027
        :pswitch_34e  #00000028
        :pswitch_33b  #00000029
        :pswitch_328  #0000002a
        :pswitch_315  #0000002b
        :pswitch_2f8  #0000002c
        :pswitch_2e5  #0000002d
        :pswitch_2d2  #0000002e
        :pswitch_2bf  #0000002f
        :pswitch_2ac  #00000030
        :pswitch_28d  #00000031
        :pswitch_275  #00000032
        :pswitch_25f  #00000033
        :pswitch_249  #00000034
        :pswitch_233  #00000035
        :pswitch_21d  #00000036
        :pswitch_207  #00000037
        :pswitch_1f1  #00000038
        :pswitch_1db  #00000039
        :pswitch_1c5  #0000003a
        :pswitch_1bc  #0000003b
        :pswitch_180  #0000003c
        :pswitch_16f  #0000003d
        :pswitch_159  #0000003e
        :pswitch_12e  #0000003f
        :pswitch_118  #00000040
        :pswitch_102  #00000041
        :pswitch_ec  #00000042
        :pswitch_d6  #00000043
        :pswitch_c0  #00000044
    .end packed-switch
.end method

.method private final mergeMap(Ljava/lang/Object;ILjava/lang/Object;Lcom/android/framework/protobuf/ExtensionRegistryLite;Lcom/android/framework/protobuf/Reader;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "I",
            "Ljava/lang/Object;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            "Lcom/android/framework/protobuf/Reader;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/android/framework/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_18

    iget-object v3, p0, Lcom/android/framework/protobuf/MessageSchema;->mapFieldSchema:Lcom/android/framework/protobuf/MapFieldSchema;

    invoke-interface {v3, p3}, Lcom/android/framework/protobuf/MapFieldSchema;->newMapField(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_2f

    :cond_18
    iget-object v3, p0, Lcom/android/framework/protobuf/MessageSchema;->mapFieldSchema:Lcom/android/framework/protobuf/MapFieldSchema;

    invoke-interface {v3, v2}, Lcom/android/framework/protobuf/MapFieldSchema;->isImmutable(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    move-object v3, v2

    iget-object v4, p0, Lcom/android/framework/protobuf/MessageSchema;->mapFieldSchema:Lcom/android/framework/protobuf/MapFieldSchema;

    invoke-interface {v4, p3}, Lcom/android/framework/protobuf/MapFieldSchema;->newMapField(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iget-object v4, p0, Lcom/android/framework/protobuf/MessageSchema;->mapFieldSchema:Lcom/android/framework/protobuf/MapFieldSchema;

    invoke-interface {v4, v2, v3}, Lcom/android/framework/protobuf/MapFieldSchema;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v0, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_2f
    :goto_2f
    iget-object v3, p0, Lcom/android/framework/protobuf/MessageSchema;->mapFieldSchema:Lcom/android/framework/protobuf/MapFieldSchema;

    invoke-interface {v3, v2}, Lcom/android/framework/protobuf/MapFieldSchema;->forMutableMapData(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lcom/android/framework/protobuf/MessageSchema;->mapFieldSchema:Lcom/android/framework/protobuf/MapFieldSchema;

    invoke-interface {v4, p3}, Lcom/android/framework/protobuf/MapFieldSchema;->forMapMetadata(Ljava/lang/Object;)Lcom/android/framework/protobuf/MapEntryLite$Metadata;

    move-result-object v4

    invoke-interface {p5, v3, v4, p4}, Lcom/android/framework/protobuf/Reader;->readMap(Ljava/util/Map;Lcom/android/framework/protobuf/MapEntryLite$Metadata;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private mergeMessage(Ljava/lang/Object;Ljava/lang/Object;I)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/android/framework/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-direct {p0, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-nez v3, :cond_f

    return-void

    :cond_f
    invoke-static {p1, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    if-eqz v3, :cond_26

    if-eqz v4, :cond_26

    invoke-static {v3, v4}, Lcom/android/framework/protobuf/Internal;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {p1, v1, v2, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, p3}, Lcom/android/framework/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto :goto_2f

    :cond_26
    if-eqz v4, :cond_2f

    invoke-static {p1, v1, v2, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, p3}, Lcom/android/framework/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto :goto_30

    :cond_2f
    :goto_2f
    nop

    :goto_30
    return-void
.end method

.method private mergeOneofMessage(Ljava/lang/Object;Ljava/lang/Object;I)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/android/framework/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v0

    invoke-direct {p0, p3}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v1

    invoke-static {v0}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-direct {p0, p2, v1, p3}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-nez v4, :cond_13

    return-void

    :cond_13
    invoke-static {p1, v2, v3}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v2, v3}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    if-eqz v4, :cond_2a

    if-eqz v5, :cond_2a

    invoke-static {v4, v5}, Lcom/android/framework/protobuf/Internal;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {p1, v2, v3, v6}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v1, p3}, Lcom/android/framework/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    goto :goto_33

    :cond_2a
    if-eqz v5, :cond_33

    invoke-static {p1, v2, v3, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v1, p3}, Lcom/android/framework/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    goto :goto_34

    :cond_33
    :goto_33
    nop

    :goto_34
    return-void
.end method

.method private mergeSingleField(Ljava/lang/Object;Ljava/lang/Object;I)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/android/framework/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-direct {p0, p3}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    invoke-static {v0}, Lcom/android/framework/protobuf/MessageSchema;->type(I)I

    move-result v4

    packed-switch v4, :pswitch_data_174

    goto/16 :goto_173

    :pswitch_15  #0x44
    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->mergeOneofMessage(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_173

    :pswitch_1a  #0x3d, 0x3e, 0x3f, 0x40, 0x41, 0x42, 0x43
    invoke-direct {p0, p2, v3, p3}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_173

    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p1, v1, v2, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v3, p3}, Lcom/android/framework/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    goto/16 :goto_173

    :pswitch_2c  #0x3c
    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->mergeOneofMessage(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_173

    :pswitch_31  #0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39, 0x3a, 0x3b
    invoke-direct {p0, p2, v3, p3}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_173

    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p1, v1, v2, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v3, p3}, Lcom/android/framework/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    goto/16 :goto_173

    :pswitch_43  #0x32
    iget-object v4, p0, Lcom/android/framework/protobuf/MessageSchema;->mapFieldSchema:Lcom/android/framework/protobuf/MapFieldSchema;

    invoke-static {v4, p1, p2, v1, v2}, Lcom/android/framework/protobuf/SchemaUtil;->mergeMap(Lcom/android/framework/protobuf/MapFieldSchema;Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_173

    :pswitch_4a  #0x12, 0x13, 0x14, 0x15, 0x16, 0x17, 0x18, 0x19, 0x1a, 0x1b, 0x1c, 0x1d, 0x1e, 0x1f, 0x20, 0x21, 0x22, 0x23, 0x24, 0x25, 0x26, 0x27, 0x28, 0x29, 0x2a, 0x2b, 0x2c, 0x2d, 0x2e, 0x2f, 0x30, 0x31
    iget-object v4, p0, Lcom/android/framework/protobuf/MessageSchema;->listFieldSchema:Lcom/android/framework/protobuf/ListFieldSchema;

    invoke-virtual {v4, p1, p2, v1, v2}, Lcom/android/framework/protobuf/ListFieldSchema;->mergeListsAt(Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_173

    :pswitch_51  #0x11
    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_173

    :pswitch_56  #0x10
    invoke-direct {p0, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_173

    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v1, v2, v4, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    invoke-direct {p0, p1, p3}, Lcom/android/framework/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_173

    :pswitch_68  #0xf
    invoke-direct {p0, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_173

    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p1, v1, v2, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    invoke-direct {p0, p1, p3}, Lcom/android/framework/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_173

    :pswitch_7a  #0xe
    invoke-direct {p0, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_173

    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v1, v2, v4, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    invoke-direct {p0, p1, p3}, Lcom/android/framework/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_173

    :pswitch_8c  #0xd
    invoke-direct {p0, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_173

    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p1, v1, v2, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    invoke-direct {p0, p1, p3}, Lcom/android/framework/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_173

    :pswitch_9e  #0xc
    invoke-direct {p0, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_173

    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p1, v1, v2, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    invoke-direct {p0, p1, p3}, Lcom/android/framework/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_173

    :pswitch_b0  #0xb
    invoke-direct {p0, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_173

    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p1, v1, v2, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    invoke-direct {p0, p1, p3}, Lcom/android/framework/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_173

    :pswitch_c2  #0xa
    invoke-direct {p0, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_173

    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p1, v1, v2, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, p3}, Lcom/android/framework/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_173

    :pswitch_d4  #0x9
    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_173

    :pswitch_d9  #0x8
    invoke-direct {p0, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_173

    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p1, v1, v2, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, p3}, Lcom/android/framework/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_173

    :pswitch_eb  #0x7
    invoke-direct {p0, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_173

    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getBoolean(Ljava/lang/Object;J)Z

    move-result v4

    invoke-static {p1, v1, v2, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putBoolean(Ljava/lang/Object;JZ)V

    invoke-direct {p0, p1, p3}, Lcom/android/framework/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_173

    :pswitch_fd  #0x6
    invoke-direct {p0, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_173

    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p1, v1, v2, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    invoke-direct {p0, p1, p3}, Lcom/android/framework/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto :goto_173

    :pswitch_10e  #0x5
    invoke-direct {p0, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_173

    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v1, v2, v4, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    invoke-direct {p0, p1, p3}, Lcom/android/framework/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto :goto_173

    :pswitch_11f  #0x4
    invoke-direct {p0, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_173

    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p1, v1, v2, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    invoke-direct {p0, p1, p3}, Lcom/android/framework/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto :goto_173

    :pswitch_130  #0x3
    invoke-direct {p0, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_173

    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v1, v2, v4, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    invoke-direct {p0, p1, p3}, Lcom/android/framework/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto :goto_173

    :pswitch_141  #0x2
    invoke-direct {p0, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_173

    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v1, v2, v4, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    invoke-direct {p0, p1, p3}, Lcom/android/framework/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto :goto_173

    :pswitch_152  #0x1
    invoke-direct {p0, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_173

    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getFloat(Ljava/lang/Object;J)F

    move-result v4

    invoke-static {p1, v1, v2, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putFloat(Ljava/lang/Object;JF)V

    invoke-direct {p0, p1, p3}, Lcom/android/framework/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto :goto_173

    :pswitch_163  #0x0
    invoke-direct {p0, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_173

    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getDouble(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {p1, v1, v2, v4, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->putDouble(Ljava/lang/Object;JD)V

    invoke-direct {p0, p1, p3}, Lcom/android/framework/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    :cond_173
    :goto_173
    return-void

    :pswitch_data_174
    .packed-switch 0x0
        :pswitch_163  #00000000
        :pswitch_152  #00000001
        :pswitch_141  #00000002
        :pswitch_130  #00000003
        :pswitch_11f  #00000004
        :pswitch_10e  #00000005
        :pswitch_fd  #00000006
        :pswitch_eb  #00000007
        :pswitch_d9  #00000008
        :pswitch_d4  #00000009
        :pswitch_c2  #0000000a
        :pswitch_b0  #0000000b
        :pswitch_9e  #0000000c
        :pswitch_8c  #0000000d
        :pswitch_7a  #0000000e
        :pswitch_68  #0000000f
        :pswitch_56  #00000010
        :pswitch_51  #00000011
        :pswitch_4a  #00000012
        :pswitch_4a  #00000013
        :pswitch_4a  #00000014
        :pswitch_4a  #00000015
        :pswitch_4a  #00000016
        :pswitch_4a  #00000017
        :pswitch_4a  #00000018
        :pswitch_4a  #00000019
        :pswitch_4a  #0000001a
        :pswitch_4a  #0000001b
        :pswitch_4a  #0000001c
        :pswitch_4a  #0000001d
        :pswitch_4a  #0000001e
        :pswitch_4a  #0000001f
        :pswitch_4a  #00000020
        :pswitch_4a  #00000021
        :pswitch_4a  #00000022
        :pswitch_4a  #00000023
        :pswitch_4a  #00000024
        :pswitch_4a  #00000025
        :pswitch_4a  #00000026
        :pswitch_4a  #00000027
        :pswitch_4a  #00000028
        :pswitch_4a  #00000029
        :pswitch_4a  #0000002a
        :pswitch_4a  #0000002b
        :pswitch_4a  #0000002c
        :pswitch_4a  #0000002d
        :pswitch_4a  #0000002e
        :pswitch_4a  #0000002f
        :pswitch_4a  #00000030
        :pswitch_4a  #00000031
        :pswitch_43  #00000032
        :pswitch_31  #00000033
        :pswitch_31  #00000034
        :pswitch_31  #00000035
        :pswitch_31  #00000036
        :pswitch_31  #00000037
        :pswitch_31  #00000038
        :pswitch_31  #00000039
        :pswitch_31  #0000003a
        :pswitch_31  #0000003b
        :pswitch_2c  #0000003c
        :pswitch_1a  #0000003d
        :pswitch_1a  #0000003e
        :pswitch_1a  #0000003f
        :pswitch_1a  #00000040
        :pswitch_1a  #00000041
        :pswitch_1a  #00000042
        :pswitch_1a  #00000043
        :pswitch_15  #00000044
    .end packed-switch
.end method

.method static newSchema(Ljava/lang/Class;Lcom/android/framework/protobuf/MessageInfo;Lcom/android/framework/protobuf/NewInstanceSchema;Lcom/android/framework/protobuf/ListFieldSchema;Lcom/android/framework/protobuf/UnknownFieldSchema;Lcom/android/framework/protobuf/ExtensionSchema;Lcom/android/framework/protobuf/MapFieldSchema;)Lcom/android/framework/protobuf/MessageSchema;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/android/framework/protobuf/MessageInfo;",
            "Lcom/android/framework/protobuf/NewInstanceSchema;",
            "Lcom/android/framework/protobuf/ListFieldSchema;",
            "Lcom/android/framework/protobuf/UnknownFieldSchema<",
            "**>;",
            "Lcom/android/framework/protobuf/ExtensionSchema<",
            "*>;",
            "Lcom/android/framework/protobuf/MapFieldSchema;",
            ")",
            "Lcom/android/framework/protobuf/MessageSchema<",
            "TT;>;"
        }
    .end annotation

    instance-of v0, p1, Lcom/android/framework/protobuf/RawMessageInfo;

    if-eqz v0, :cond_11

    move-object v1, p1

    check-cast v1, Lcom/android/framework/protobuf/RawMessageInfo;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v1 .. v6}, Lcom/android/framework/protobuf/MessageSchema;->newSchemaForRawMessageInfo(Lcom/android/framework/protobuf/RawMessageInfo;Lcom/android/framework/protobuf/NewInstanceSchema;Lcom/android/framework/protobuf/ListFieldSchema;Lcom/android/framework/protobuf/UnknownFieldSchema;Lcom/android/framework/protobuf/ExtensionSchema;Lcom/android/framework/protobuf/MapFieldSchema;)Lcom/android/framework/protobuf/MessageSchema;

    move-result-object v0

    return-object v0

    :cond_11
    move-object v1, p1

    check-cast v1, Lcom/android/framework/protobuf/StructuralMessageInfo;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v1 .. v6}, Lcom/android/framework/protobuf/MessageSchema;->newSchemaForMessageInfo(Lcom/android/framework/protobuf/StructuralMessageInfo;Lcom/android/framework/protobuf/NewInstanceSchema;Lcom/android/framework/protobuf/ListFieldSchema;Lcom/android/framework/protobuf/UnknownFieldSchema;Lcom/android/framework/protobuf/ExtensionSchema;Lcom/android/framework/protobuf/MapFieldSchema;)Lcom/android/framework/protobuf/MessageSchema;

    move-result-object v0

    return-object v0
.end method

.method static newSchemaForMessageInfo(Lcom/android/framework/protobuf/StructuralMessageInfo;Lcom/android/framework/protobuf/NewInstanceSchema;Lcom/android/framework/protobuf/ListFieldSchema;Lcom/android/framework/protobuf/UnknownFieldSchema;Lcom/android/framework/protobuf/ExtensionSchema;Lcom/android/framework/protobuf/MapFieldSchema;)Lcom/android/framework/protobuf/MessageSchema;
    .registers 39
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/framework/protobuf/StructuralMessageInfo;",
            "Lcom/android/framework/protobuf/NewInstanceSchema;",
            "Lcom/android/framework/protobuf/ListFieldSchema;",
            "Lcom/android/framework/protobuf/UnknownFieldSchema<",
            "**>;",
            "Lcom/android/framework/protobuf/ExtensionSchema<",
            "*>;",
            "Lcom/android/framework/protobuf/MapFieldSchema;",
            ")",
            "Lcom/android/framework/protobuf/MessageSchema<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Lcom/android/framework/protobuf/StructuralMessageInfo;->getSyntax()Lcom/android/framework/protobuf/ProtoSyntax;

    move-result-object v0

    sget-object v1, Lcom/android/framework/protobuf/ProtoSyntax;->PROTO3:Lcom/android/framework/protobuf/ProtoSyntax;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_c

    move v0, v3

    goto :goto_d

    :cond_c
    move v0, v2

    :goto_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/framework/protobuf/StructuralMessageInfo;->getFields()[Lcom/android/framework/protobuf/FieldInfo;

    move-result-object v1

    array-length v4, v1

    if-nez v4, :cond_19

    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v20, v4

    goto :goto_2a

    :cond_19
    aget-object v4, v1, v2

    invoke-virtual {v4}, Lcom/android/framework/protobuf/FieldInfo;->getFieldNumber()I

    move-result v4

    array-length v5, v1

    sub-int/2addr v5, v3

    aget-object v3, v1, v5

    invoke-virtual {v3}, Lcom/android/framework/protobuf/FieldInfo;->getFieldNumber()I

    move-result v3

    move/from16 v20, v3

    move v3, v4

    :goto_2a
    array-length v15, v1

    mul-int/lit8 v4, v15, 0x3

    new-array v14, v4, [I

    mul-int/lit8 v4, v15, 0x2

    new-array v13, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    array-length v6, v1

    move v7, v2

    :goto_37
    const/16 v8, 0x31

    const/16 v9, 0x12

    if-ge v7, v6, :cond_63

    aget-object v10, v1, v7

    invoke-virtual {v10}, Lcom/android/framework/protobuf/FieldInfo;->getType()Lcom/android/framework/protobuf/FieldType;

    move-result-object v11

    sget-object v12, Lcom/android/framework/protobuf/FieldType;->MAP:Lcom/android/framework/protobuf/FieldType;

    if-ne v11, v12, :cond_4a

    add-int/lit8 v4, v4, 0x1

    goto :goto_60

    :cond_4a
    invoke-virtual {v10}, Lcom/android/framework/protobuf/FieldInfo;->getType()Lcom/android/framework/protobuf/FieldType;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/framework/protobuf/FieldType;->id()I

    move-result v11

    if-lt v11, v9, :cond_60

    invoke-virtual {v10}, Lcom/android/framework/protobuf/FieldInfo;->getType()Lcom/android/framework/protobuf/FieldType;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/framework/protobuf/FieldType;->id()I

    move-result v9

    if-gt v9, v8, :cond_60

    add-int/lit8 v5, v5, 0x1

    :cond_60
    :goto_60
    add-int/lit8 v7, v7, 0x1

    goto :goto_37

    :cond_63
    const/4 v6, 0x0

    if-lez v4, :cond_69

    new-array v7, v4, [I

    goto :goto_6a

    :cond_69
    move-object v7, v6

    :goto_6a
    if-lez v5, :cond_6e

    new-array v6, v5, [I

    :cond_6e
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/framework/protobuf/StructuralMessageInfo;->getCheckInitialized()[I

    move-result-object v10

    if-nez v10, :cond_7a

    sget-object v10, Lcom/android/framework/protobuf/MessageSchema;->EMPTY_INT_ARRAY:[I

    move-object v12, v10

    goto :goto_7b

    :cond_7a
    move-object v12, v10

    :goto_7b
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v16, 0x0

    move/from16 v21, v4

    move/from16 v22, v5

    move/from16 v4, v16

    move/from16 v32, v11

    move v11, v10

    move/from16 v10, v32

    :goto_8a
    array-length v5, v1

    if-ge v10, v5, :cond_ea

    aget-object v5, v1, v10

    invoke-virtual {v5}, Lcom/android/framework/protobuf/FieldInfo;->getFieldNumber()I

    move-result v2

    invoke-static {v5, v14, v4, v0, v13}, Lcom/android/framework/protobuf/MessageSchema;->storeFieldData(Lcom/android/framework/protobuf/FieldInfo;[IIZ[Ljava/lang/Object;)V

    array-length v8, v12

    if-ge v11, v8, :cond_a2

    aget v8, v12, v11

    if-ne v8, v2, :cond_a2

    add-int/lit8 v8, v11, 0x1

    aput v4, v12, v11

    move v11, v8

    :cond_a2
    invoke-virtual {v5}, Lcom/android/framework/protobuf/FieldInfo;->getType()Lcom/android/framework/protobuf/FieldType;

    move-result-object v8

    sget-object v9, Lcom/android/framework/protobuf/FieldType;->MAP:Lcom/android/framework/protobuf/FieldType;

    if-ne v8, v9, :cond_b3

    add-int/lit8 v8, v21, 0x1

    aput v4, v7, v21

    move/from16 v21, v8

    move/from16 v19, v10

    goto :goto_df

    :cond_b3
    invoke-virtual {v5}, Lcom/android/framework/protobuf/FieldInfo;->getType()Lcom/android/framework/protobuf/FieldType;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/framework/protobuf/FieldType;->id()I

    move-result v8

    const/16 v9, 0x12

    if-lt v8, v9, :cond_dd

    invoke-virtual {v5}, Lcom/android/framework/protobuf/FieldInfo;->getType()Lcom/android/framework/protobuf/FieldType;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/framework/protobuf/FieldType;->id()I

    move-result v8

    const/16 v9, 0x31

    if-gt v8, v9, :cond_dd

    add-int/lit8 v8, v22, 0x1

    invoke-virtual {v5}, Lcom/android/framework/protobuf/FieldInfo;->getField()Ljava/lang/reflect/Field;

    move-result-object v17

    move/from16 v19, v10

    invoke-static/range {v17 .. v17}, Lcom/android/framework/protobuf/UnsafeUtil;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v9

    long-to-int v9, v9

    aput v9, v6, v22

    move/from16 v22, v8

    goto :goto_df

    :cond_dd
    move/from16 v19, v10

    :goto_df
    nop

    add-int/lit8 v10, v19, 0x1

    add-int/lit8 v4, v4, 0x3

    const/4 v2, 0x0

    const/16 v8, 0x31

    const/16 v9, 0x12

    goto :goto_8a

    :cond_ea
    move/from16 v19, v10

    if-nez v7, :cond_f2

    sget-object v7, Lcom/android/framework/protobuf/MessageSchema;->EMPTY_INT_ARRAY:[I

    move-object v2, v7

    goto :goto_f3

    :cond_f2
    move-object v2, v7

    :goto_f3
    if-nez v6, :cond_f9

    sget-object v6, Lcom/android/framework/protobuf/MessageSchema;->EMPTY_INT_ARRAY:[I

    move-object v10, v6

    goto :goto_fa

    :cond_f9
    move-object v10, v6

    :goto_fa
    array-length v4, v12

    array-length v5, v2

    add-int/2addr v4, v5

    array-length v5, v10

    add-int/2addr v4, v5

    new-array v9, v4, [I

    array-length v4, v12

    const/4 v5, 0x0

    invoke-static {v12, v5, v9, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, v12

    array-length v6, v2

    invoke-static {v2, v5, v9, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, v12

    array-length v6, v2

    add-int/2addr v4, v6

    array-length v6, v10

    invoke-static {v10, v5, v9, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v23, Lcom/android/framework/protobuf/MessageSchema;

    invoke-virtual/range {p0 .. p0}, Lcom/android/framework/protobuf/StructuralMessageInfo;->getDefaultInstance()Lcom/android/framework/protobuf/MessageLite;

    move-result-object v16

    const/16 v17, 0x1

    array-length v8, v12

    array-length v4, v12

    array-length v5, v2

    add-int v18, v4, v5

    move-object/from16 v4, v23

    move-object v5, v14

    move-object v6, v13

    move v7, v3

    move/from16 v24, v8

    move/from16 v8, v20

    move-object/from16 v25, v9

    move-object/from16 v9, v16

    move-object/from16 v27, v10

    move/from16 v26, v19

    move v10, v0

    move/from16 v28, v11

    move/from16 v11, v17

    move-object/from16 v29, v12

    move-object/from16 v12, v25

    move-object/from16 v30, v13

    move/from16 v13, v24

    move-object/from16 v24, v14

    move/from16 v14, v18

    move/from16 v31, v15

    move-object/from16 v15, p1

    move-object/from16 v16, p2

    move-object/from16 v17, p3

    move-object/from16 v18, p4

    move-object/from16 v19, p5

    invoke-direct/range {v4 .. v19}, Lcom/android/framework/protobuf/MessageSchema;-><init>([I[Ljava/lang/Object;IILcom/android/framework/protobuf/MessageLite;ZZ[IIILcom/android/framework/protobuf/NewInstanceSchema;Lcom/android/framework/protobuf/ListFieldSchema;Lcom/android/framework/protobuf/UnknownFieldSchema;Lcom/android/framework/protobuf/ExtensionSchema;Lcom/android/framework/protobuf/MapFieldSchema;)V

    return-object v23
.end method

.method static newSchemaForRawMessageInfo(Lcom/android/framework/protobuf/RawMessageInfo;Lcom/android/framework/protobuf/NewInstanceSchema;Lcom/android/framework/protobuf/ListFieldSchema;Lcom/android/framework/protobuf/UnknownFieldSchema;Lcom/android/framework/protobuf/ExtensionSchema;Lcom/android/framework/protobuf/MapFieldSchema;)Lcom/android/framework/protobuf/MessageSchema;
    .registers 49
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/framework/protobuf/RawMessageInfo;",
            "Lcom/android/framework/protobuf/NewInstanceSchema;",
            "Lcom/android/framework/protobuf/ListFieldSchema;",
            "Lcom/android/framework/protobuf/UnknownFieldSchema<",
            "**>;",
            "Lcom/android/framework/protobuf/ExtensionSchema<",
            "*>;",
            "Lcom/android/framework/protobuf/MapFieldSchema;",
            ")",
            "Lcom/android/framework/protobuf/MessageSchema<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Lcom/android/framework/protobuf/RawMessageInfo;->getSyntax()Lcom/android/framework/protobuf/ProtoSyntax;

    move-result-object v0

    sget-object v1, Lcom/android/framework/protobuf/ProtoSyntax;->PROTO3:Lcom/android/framework/protobuf/ProtoSyntax;

    if-ne v0, v1, :cond_a

    const/4 v10, 0x1

    goto :goto_b

    :cond_a
    const/4 v10, 0x0

    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/framework/protobuf/RawMessageInfo;->getStringInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v4, 0x0

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const v6, 0xd800

    if-lt v4, v6, :cond_39

    and-int/lit16 v7, v4, 0x1fff

    const/16 v8, 0xd

    :goto_23
    add-int/lit8 v9, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move v4, v5

    if-lt v5, v6, :cond_34

    and-int/lit16 v5, v4, 0x1fff

    shl-int/2addr v5, v8

    or-int/2addr v7, v5

    add-int/lit8 v8, v8, 0xd

    move v5, v9

    goto :goto_23

    :cond_34
    shl-int v5, v4, v8

    or-int v4, v7, v5

    move v5, v9

    :cond_39
    move/from16 v20, v4

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v6, :cond_5d

    and-int/lit16 v5, v4, 0x1fff

    const/16 v8, 0xd

    :goto_47
    add-int/lit8 v9, v7, 0x1

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move v4, v7

    if-lt v7, v6, :cond_58

    and-int/lit16 v7, v4, 0x1fff

    shl-int/2addr v7, v8

    or-int/2addr v5, v7

    add-int/lit8 v8, v8, 0xd

    move v7, v9

    goto :goto_47

    :cond_58
    shl-int v7, v4, v8

    or-int v4, v5, v7

    move v7, v9

    :cond_5d
    move/from16 v21, v4

    if-nez v21, :cond_82

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    sget-object v16, Lcom/android/framework/protobuf/MessageSchema;->EMPTY_INT_ARRAY:[I

    const/16 v17, 0x0

    move v2, v5

    move/from16 v22, v8

    move/from16 v23, v9

    move/from16 v24, v11

    move/from16 v25, v12

    move/from16 v26, v13

    move/from16 v27, v14

    move/from16 v28, v15

    move-object/from16 v29, v16

    move/from16 v16, v17

    goto/16 :goto_1bb

    :cond_82
    add-int/lit8 v5, v7, 0x1

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v6, :cond_a4

    and-int/lit16 v7, v4, 0x1fff

    const/16 v8, 0xd

    :goto_8e
    add-int/lit8 v9, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move v4, v5

    if-lt v5, v6, :cond_9f

    and-int/lit16 v5, v4, 0x1fff

    shl-int/2addr v5, v8

    or-int/2addr v7, v5

    add-int/lit8 v8, v8, 0xd

    move v5, v9

    goto :goto_8e

    :cond_9f
    shl-int v5, v4, v8

    or-int v4, v7, v5

    move v5, v9

    :cond_a4
    move v7, v4

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v6, :cond_c7

    and-int/lit16 v5, v4, 0x1fff

    const/16 v9, 0xd

    :goto_b1
    add-int/lit8 v11, v8, 0x1

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move v4, v8

    if-lt v8, v6, :cond_c2

    and-int/lit16 v8, v4, 0x1fff

    shl-int/2addr v8, v9

    or-int/2addr v5, v8

    add-int/lit8 v9, v9, 0xd

    move v8, v11

    goto :goto_b1

    :cond_c2
    shl-int v8, v4, v9

    or-int v4, v5, v8

    move v8, v11

    :cond_c7
    move v5, v4

    add-int/lit8 v9, v8, 0x1

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v6, :cond_ea

    and-int/lit16 v8, v4, 0x1fff

    const/16 v11, 0xd

    :goto_d4
    add-int/lit8 v12, v9, 0x1

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    move v4, v9

    if-lt v9, v6, :cond_e5

    and-int/lit16 v9, v4, 0x1fff

    shl-int/2addr v9, v11

    or-int/2addr v8, v9

    add-int/lit8 v11, v11, 0xd

    move v9, v12

    goto :goto_d4

    :cond_e5
    shl-int v9, v4, v11

    or-int v4, v8, v9

    move v9, v12

    :cond_ea
    move v8, v4

    add-int/lit8 v11, v9, 0x1

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v6, :cond_10d

    and-int/lit16 v9, v4, 0x1fff

    const/16 v12, 0xd

    :goto_f7
    add-int/lit8 v13, v11, 0x1

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    move v4, v11

    if-lt v11, v6, :cond_108

    and-int/lit16 v11, v4, 0x1fff

    shl-int/2addr v11, v12

    or-int/2addr v9, v11

    add-int/lit8 v12, v12, 0xd

    move v11, v13

    goto :goto_f7

    :cond_108
    shl-int v11, v4, v12

    or-int v4, v9, v11

    move v11, v13

    :cond_10d
    move v9, v4

    add-int/lit8 v12, v11, 0x1

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v6, :cond_130

    and-int/lit16 v11, v4, 0x1fff

    const/16 v13, 0xd

    :goto_11a
    add-int/lit8 v14, v12, 0x1

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    move v4, v12

    if-lt v12, v6, :cond_12b

    and-int/lit16 v12, v4, 0x1fff

    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    add-int/lit8 v13, v13, 0xd

    move v12, v14

    goto :goto_11a

    :cond_12b
    shl-int v12, v4, v13

    or-int v4, v11, v12

    move v12, v14

    :cond_130
    move v11, v4

    add-int/lit8 v13, v12, 0x1

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v6, :cond_153

    and-int/lit16 v12, v4, 0x1fff

    const/16 v14, 0xd

    :goto_13d
    add-int/lit8 v15, v13, 0x1

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    move v4, v13

    if-lt v13, v6, :cond_14e

    and-int/lit16 v13, v4, 0x1fff

    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    add-int/lit8 v14, v14, 0xd

    move v13, v15

    goto :goto_13d

    :cond_14e
    shl-int v13, v4, v14

    or-int v4, v12, v13

    move v13, v15

    :cond_153
    move v12, v4

    add-int/lit8 v14, v13, 0x1

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v6, :cond_178

    and-int/lit16 v13, v4, 0x1fff

    const/16 v15, 0xd

    :goto_160
    add-int/lit8 v16, v14, 0x1

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    move v4, v14

    if-lt v14, v6, :cond_172

    and-int/lit16 v14, v4, 0x1fff

    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    add-int/lit8 v15, v15, 0xd

    move/from16 v14, v16

    goto :goto_160

    :cond_172
    shl-int v14, v4, v15

    or-int v4, v13, v14

    move/from16 v14, v16

    :cond_178
    move v13, v4

    add-int/lit8 v15, v14, 0x1

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v6, :cond_19e

    and-int/lit16 v14, v4, 0x1fff

    const/16 v16, 0xd

    :goto_185
    add-int/lit8 v17, v15, 0x1

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    move v4, v15

    if-lt v15, v6, :cond_198

    and-int/lit16 v15, v4, 0x1fff

    shl-int v15, v15, v16

    or-int/2addr v14, v15

    add-int/lit8 v16, v16, 0xd

    move/from16 v15, v17

    goto :goto_185

    :cond_198
    shl-int v15, v4, v16

    or-int v4, v14, v15

    move/from16 v15, v17

    :cond_19e
    move v14, v4

    add-int v16, v14, v12

    add-int v2, v16, v13

    new-array v2, v2, [I

    mul-int/lit8 v16, v7, 0x2

    add-int v16, v16, v5

    move-object/from16 v29, v2

    move/from16 v22, v5

    move v2, v7

    move/from16 v23, v8

    move/from16 v24, v9

    move/from16 v25, v11

    move/from16 v26, v12

    move/from16 v27, v13

    move/from16 v28, v14

    move v7, v15

    :goto_1bb
    sget-object v15, Lcom/android/framework/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual/range {p0 .. p0}, Lcom/android/framework/protobuf/RawMessageInfo;->getObjects()[Ljava/lang/Object;

    move-result-object v30

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/framework/protobuf/RawMessageInfo;->getDefaultInstance()Lcom/android/framework/protobuf/MessageLite;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    mul-int/lit8 v8, v25, 0x3

    new-array v13, v8, [I

    mul-int/lit8 v8, v25, 0x2

    new-array v12, v8, [Ljava/lang/Object;

    move/from16 v8, v28

    add-int v9, v28, v26

    const/4 v11, 0x0

    move/from16 v31, v4

    move/from16 v32, v5

    move/from16 v33, v8

    move/from16 v34, v9

    move/from16 v35, v11

    move/from16 v36, v16

    move v11, v7

    :goto_1e4
    if-ge v11, v1, :cond_42c

    add-int/lit8 v4, v11, 0x1

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v6, :cond_208

    and-int/lit16 v7, v5, 0x1fff

    const/16 v8, 0xd

    :goto_1f2
    add-int/lit8 v9, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move v5, v4

    if-lt v4, v6, :cond_203

    and-int/lit16 v4, v5, 0x1fff

    shl-int/2addr v4, v8

    or-int/2addr v7, v4

    add-int/lit8 v8, v8, 0xd

    move v4, v9

    goto :goto_1f2

    :cond_203
    shl-int v4, v5, v8

    or-int v5, v7, v4

    move v4, v9

    :cond_208
    move v7, v5

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v6, :cond_22b

    and-int/lit16 v5, v4, 0x1fff

    const/16 v9, 0xd

    :goto_215
    add-int/lit8 v11, v8, 0x1

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move v4, v8

    if-lt v8, v6, :cond_226

    and-int/lit16 v8, v4, 0x1fff

    shl-int/2addr v8, v9

    or-int/2addr v5, v8

    add-int/lit8 v9, v9, 0xd

    move v8, v11

    goto :goto_215

    :cond_226
    shl-int v8, v4, v9

    or-int v4, v5, v8

    move v8, v11

    :cond_22b
    move v5, v4

    and-int/lit16 v9, v5, 0xff

    and-int/lit16 v11, v5, 0x400

    if-eqz v11, :cond_238

    add-int/lit8 v11, v32, 0x1

    aput v35, v29, v32

    move/from16 v32, v11

    :cond_238
    const/16 v11, 0x33

    if-lt v9, v11, :cond_2e6

    add-int/lit8 v11, v8, 0x1

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v6, :cond_261

    and-int/lit16 v8, v4, 0x1fff

    const/16 v31, 0xd

    :goto_248
    add-int/lit8 v37, v11, 0x1

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    move v4, v11

    if-lt v11, v6, :cond_25b

    and-int/lit16 v11, v4, 0x1fff

    shl-int v11, v11, v31

    or-int/2addr v8, v11

    add-int/lit8 v31, v31, 0xd

    move/from16 v11, v37

    goto :goto_248

    :cond_25b
    shl-int v11, v4, v31

    or-int v4, v8, v11

    move/from16 v11, v37

    :cond_261
    move v8, v4

    add-int/lit8 v6, v9, -0x33

    const/16 v3, 0x9

    if-eq v6, v3, :cond_28b

    const/16 v3, 0x11

    if-ne v6, v3, :cond_26f

    move/from16 v38, v1

    goto :goto_28d

    :cond_26f
    const/16 v3, 0xc

    if-ne v6, v3, :cond_288

    and-int/lit8 v3, v20, 0x1

    move/from16 v38, v1

    const/4 v1, 0x1

    if-ne v3, v1, :cond_29b

    div-int/lit8 v3, v35, 0x3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v1

    add-int/lit8 v1, v36, 0x1

    aget-object v18, v30, v36

    aput-object v18, v12, v3

    move/from16 v36, v1

    goto :goto_29b

    :cond_288
    move/from16 v38, v1

    goto :goto_29b

    :cond_28b
    move/from16 v38, v1

    :goto_28d
    div-int/lit8 v1, v35, 0x3

    mul-int/lit8 v1, v1, 0x2

    const/4 v3, 0x1

    add-int/2addr v1, v3

    add-int/lit8 v3, v36, 0x1

    aget-object v18, v30, v36

    aput-object v18, v12, v1

    move/from16 v36, v3

    :cond_29b
    :goto_29b
    mul-int/lit8 v1, v8, 0x2

    aget-object v3, v30, v1

    move/from16 v18, v4

    instance-of v4, v3, Ljava/lang/reflect/Field;

    if-eqz v4, :cond_2a9

    move-object v4, v3

    check-cast v4, Ljava/lang/reflect/Field;

    goto :goto_2b2

    :cond_2a9
    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    invoke-static {v14, v4}, Lcom/android/framework/protobuf/MessageSchema;->reflectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    aput-object v4, v30, v1

    :goto_2b2
    move/from16 v39, v10

    move/from16 v19, v11

    invoke-virtual {v15, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v10

    long-to-int v10, v10

    add-int/lit8 v1, v1, 0x1

    aget-object v3, v30, v1

    instance-of v11, v3, Ljava/lang/reflect/Field;

    if-eqz v11, :cond_2c7

    move-object v11, v3

    check-cast v11, Ljava/lang/reflect/Field;

    goto :goto_2d0

    :cond_2c7
    move-object v11, v3

    check-cast v11, Ljava/lang/String;

    invoke-static {v14, v11}, Lcom/android/framework/protobuf/MessageSchema;->reflectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v11

    aput-object v11, v30, v1

    :goto_2d0
    move-object/from16 v40, v3

    move-object/from16 v31, v4

    invoke-virtual {v15, v11}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v3

    long-to-int v3, v3

    const/4 v1, 0x0

    move-object/from16 v40, v0

    move/from16 v41, v2

    move v6, v10

    move/from16 v4, v18

    move/from16 v11, v19

    move v10, v7

    goto/16 :goto_3f9

    :cond_2e6
    move/from16 v38, v1

    move/from16 v39, v10

    add-int/lit8 v1, v36, 0x1

    aget-object v3, v30, v36

    check-cast v3, Ljava/lang/String;

    invoke-static {v14, v3}, Lcom/android/framework/protobuf/MessageSchema;->reflectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/16 v6, 0x31

    const/16 v10, 0x9

    if-eq v9, v10, :cond_367

    const/16 v10, 0x11

    if-ne v9, v10, :cond_300

    goto/16 :goto_367

    :cond_300
    const/16 v10, 0x1b

    if-eq v9, v10, :cond_358

    if-ne v9, v6, :cond_307

    goto :goto_358

    :cond_307
    const/16 v10, 0xc

    if-eq v9, v10, :cond_343

    const/16 v10, 0x1e

    if-eq v9, v10, :cond_343

    const/16 v10, 0x2c

    if-ne v9, v10, :cond_314

    goto :goto_343

    :cond_314
    const/16 v10, 0x32

    if-ne v9, v10, :cond_341

    add-int/lit8 v10, v33, 0x1

    aput v35, v29, v33

    div-int/lit8 v11, v35, 0x3

    mul-int/lit8 v11, v11, 0x2

    add-int/lit8 v18, v1, 0x1

    aget-object v1, v30, v1

    aput-object v1, v12, v11

    and-int/lit16 v1, v5, 0x800

    if-eqz v1, :cond_33b

    div-int/lit8 v1, v35, 0x3

    mul-int/lit8 v1, v1, 0x2

    const/4 v11, 0x1

    add-int/2addr v1, v11

    add-int/lit8 v11, v18, 0x1

    aget-object v18, v30, v18

    aput-object v18, v12, v1

    move/from16 v33, v10

    move v1, v11

    const/4 v11, 0x1

    goto :goto_373

    :cond_33b
    move/from16 v33, v10

    move/from16 v1, v18

    const/4 v11, 0x1

    goto :goto_373

    :cond_341
    const/4 v11, 0x1

    goto :goto_373

    :cond_343
    :goto_343
    and-int/lit8 v10, v20, 0x1

    const/4 v11, 0x1

    if-ne v10, v11, :cond_356

    div-int/lit8 v10, v35, 0x3

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v11

    add-int/lit8 v11, v1, 0x1

    aget-object v1, v30, v1

    aput-object v1, v12, v10

    move v1, v11

    const/4 v11, 0x1

    goto :goto_373

    :cond_356
    const/4 v11, 0x1

    goto :goto_373

    :cond_358
    :goto_358
    div-int/lit8 v10, v35, 0x3

    mul-int/lit8 v10, v10, 0x2

    const/4 v11, 0x1

    add-int/2addr v10, v11

    add-int/lit8 v11, v1, 0x1

    aget-object v1, v30, v1

    aput-object v1, v12, v10

    move v1, v11

    const/4 v11, 0x1

    goto :goto_373

    :cond_367
    :goto_367
    div-int/lit8 v10, v35, 0x3

    mul-int/lit8 v10, v10, 0x2

    const/4 v11, 0x1

    add-int/2addr v10, v11

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v16

    aput-object v16, v12, v10

    :goto_373
    move v10, v7

    invoke-virtual {v15, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v6

    long-to-int v6, v6

    and-int/lit8 v7, v20, 0x1

    if-ne v7, v11, :cond_3da

    const/16 v7, 0x11

    if-gt v9, v7, :cond_3da

    add-int/lit8 v7, v8, 0x1

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const v8, 0xd800

    if-lt v4, v8, :cond_3ae

    and-int/lit16 v8, v4, 0x1fff

    const/16 v18, 0xd

    :goto_390
    add-int/lit8 v19, v7, 0x1

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move v4, v7

    const v11, 0xd800

    if-lt v7, v11, :cond_3a7

    and-int/lit16 v7, v4, 0x1fff

    shl-int v7, v7, v18

    or-int/2addr v8, v7

    add-int/lit8 v18, v18, 0xd

    move/from16 v7, v19

    const/4 v11, 0x1

    goto :goto_390

    :cond_3a7
    shl-int v7, v4, v18

    or-int v4, v8, v7

    move/from16 v8, v19

    goto :goto_3b0

    :cond_3ae
    move v11, v8

    move v8, v7

    :goto_3b0
    move v7, v4

    mul-int/lit8 v18, v2, 0x2

    div-int/lit8 v19, v7, 0x20

    add-int v18, v18, v19

    aget-object v11, v30, v18

    move-object/from16 v40, v0

    instance-of v0, v11, Ljava/lang/reflect/Field;

    if-eqz v0, :cond_3c3

    move-object v0, v11

    check-cast v0, Ljava/lang/reflect/Field;

    goto :goto_3cc

    :cond_3c3
    move-object v0, v11

    check-cast v0, Ljava/lang/String;

    invoke-static {v14, v0}, Lcom/android/framework/protobuf/MessageSchema;->reflectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    aput-object v0, v30, v18

    :goto_3cc
    move/from16 v19, v1

    move/from16 v41, v2

    invoke-virtual {v15, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    long-to-int v1, v1

    rem-int/lit8 v7, v7, 0x20

    move v0, v1

    move v1, v7

    goto :goto_3e2

    :cond_3da
    move-object/from16 v40, v0

    move/from16 v19, v1

    move/from16 v41, v2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_3e2
    const/16 v2, 0x12

    if-lt v9, v2, :cond_3f5

    const/16 v2, 0x31

    if-gt v9, v2, :cond_3f5

    add-int/lit8 v2, v34, 0x1

    aput v6, v29, v34

    move v3, v0

    move/from16 v34, v2

    move v11, v8

    move/from16 v36, v19

    goto :goto_3f9

    :cond_3f5
    move v3, v0

    move v11, v8

    move/from16 v36, v19

    :goto_3f9
    add-int/lit8 v0, v35, 0x1

    aput v10, v13, v35

    add-int/lit8 v2, v0, 0x1

    and-int/lit16 v7, v5, 0x200

    if-eqz v7, :cond_406

    const/high16 v7, 0x20000000

    goto :goto_407

    :cond_406
    const/4 v7, 0x0

    :goto_407
    and-int/lit16 v8, v5, 0x100

    if-eqz v8, :cond_40e

    const/high16 v8, 0x10000000

    goto :goto_40f

    :cond_40e
    const/4 v8, 0x0

    :goto_40f
    or-int/2addr v7, v8

    shl-int/lit8 v8, v9, 0x14

    or-int/2addr v7, v8

    or-int/2addr v7, v6

    aput v7, v13, v0

    add-int/lit8 v35, v2, 0x1

    shl-int/lit8 v0, v1, 0x14

    or-int/2addr v0, v3

    aput v0, v13, v2

    move/from16 v31, v4

    move/from16 v1, v38

    move/from16 v10, v39

    move-object/from16 v0, v40

    move/from16 v2, v41

    const v6, 0xd800

    goto/16 :goto_1e4

    :cond_42c
    move-object/from16 v40, v0

    move/from16 v38, v1

    move/from16 v41, v2

    new-instance v0, Lcom/android/framework/protobuf/MessageSchema;

    invoke-virtual/range {p0 .. p0}, Lcom/android/framework/protobuf/RawMessageInfo;->getDefaultInstance()Lcom/android/framework/protobuf/MessageLite;

    move-result-object v9

    const/4 v1, 0x0

    add-int v2, v28, v26

    move-object v4, v0

    move-object v5, v13

    move-object v6, v12

    move/from16 v7, v23

    move/from16 v8, v24

    move v3, v11

    move v11, v1

    move-object v1, v12

    move-object/from16 v12, v29

    move-object/from16 v37, v13

    move/from16 v13, v28

    move-object/from16 v42, v14

    move v14, v2

    move-object v2, v15

    move-object/from16 v15, p1

    move-object/from16 v16, p2

    move-object/from16 v17, p3

    move-object/from16 v18, p4

    move-object/from16 v19, p5

    invoke-direct/range {v4 .. v19}, Lcom/android/framework/protobuf/MessageSchema;-><init>([I[Ljava/lang/Object;IILcom/android/framework/protobuf/MessageLite;ZZ[IIILcom/android/framework/protobuf/NewInstanceSchema;Lcom/android/framework/protobuf/ListFieldSchema;Lcom/android/framework/protobuf/UnknownFieldSchema;Lcom/android/framework/protobuf/ExtensionSchema;Lcom/android/framework/protobuf/MapFieldSchema;)V

    return-object v0
.end method

.method private numberAt(I)I
    .registers 3

    iget-object v0, p0, Lcom/android/framework/protobuf/MessageSchema;->buffer:[I

    aget v0, v0, p1

    return v0
.end method

.method private static offset(I)J
    .registers 3

    const v0, 0xfffff

    and-int/2addr v0, p0

    int-to-long v0, v0

    return-wide v0
.end method

.method private static oneofBooleanAt(Ljava/lang/Object;J)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)Z"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static oneofDoubleAt(Ljava/lang/Object;J)D
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)D"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method private static oneofFloatAt(Ljava/lang/Object;J)F
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)F"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method private static oneofIntAt(Ljava/lang/Object;J)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)I"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private static oneofLongAt(Ljava/lang/Object;J)J
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)J"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private parseMapField(Ljava/lang/Object;[BIIIJLcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TT;[BIIIJ",
            "Lcom/android/framework/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v7, p0

    move-object/from16 v8, p1

    move-wide/from16 v9, p6

    sget-object v11, Lcom/android/framework/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    move/from16 v12, p5

    invoke-direct {p0, v12}, Lcom/android/framework/protobuf/MessageSchema;->getMapFieldDefaultEntry(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v11, v8, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, v7, Lcom/android/framework/protobuf/MessageSchema;->mapFieldSchema:Lcom/android/framework/protobuf/MapFieldSchema;

    invoke-interface {v1, v0}, Lcom/android/framework/protobuf/MapFieldSchema;->isImmutable(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    move-object v1, v0

    iget-object v2, v7, Lcom/android/framework/protobuf/MessageSchema;->mapFieldSchema:Lcom/android/framework/protobuf/MapFieldSchema;

    invoke-interface {v2, v13}, Lcom/android/framework/protobuf/MapFieldSchema;->newMapField(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, v7, Lcom/android/framework/protobuf/MessageSchema;->mapFieldSchema:Lcom/android/framework/protobuf/MapFieldSchema;

    invoke-interface {v2, v0, v1}, Lcom/android/framework/protobuf/MapFieldSchema;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v11, v8, v9, v10, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v14, v0

    goto :goto_2b

    :cond_2a
    move-object v14, v0

    :goto_2b
    iget-object v0, v7, Lcom/android/framework/protobuf/MessageSchema;->mapFieldSchema:Lcom/android/framework/protobuf/MapFieldSchema;

    invoke-interface {v0, v13}, Lcom/android/framework/protobuf/MapFieldSchema;->forMapMetadata(Ljava/lang/Object;)Lcom/android/framework/protobuf/MapEntryLite$Metadata;

    move-result-object v4

    iget-object v0, v7, Lcom/android/framework/protobuf/MessageSchema;->mapFieldSchema:Lcom/android/framework/protobuf/MapFieldSchema;

    invoke-interface {v0, v14}, Lcom/android/framework/protobuf/MapFieldSchema;->forMutableMapData(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v5

    move-object v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/android/framework/protobuf/MessageSchema;->decodeMapEntry([BIILcom/android/framework/protobuf/MapEntryLite$Metadata;Ljava/util/Map;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    return v0
.end method

.method private parseOneofField(Ljava/lang/Object;[BIIIIIIIJILcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .registers 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIIIIIIIJI",
            "Lcom/android/framework/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move-wide/from16 v13, p10

    move/from16 v15, p12

    move-object/from16 v7, p13

    sget-object v6, Lcom/android/framework/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v2, v0, Lcom/android/framework/protobuf/MessageSchema;->buffer:[I

    add-int/lit8 v3, v15, 0x2

    aget v2, v2, v3

    const v3, 0xfffff

    and-int/2addr v2, v3

    int-to-long v4, v2

    const/16 v16, 0x0

    const/4 v2, 0x5

    const/4 v3, 0x2

    packed-switch p9, :pswitch_data_29e

    move-wide/from16 v20, v4

    move-object v4, v6

    move v5, v9

    move-object v9, v8

    move-object v8, v7

    move-wide/from16 v6, v20

    goto/16 :goto_29b

    :pswitch_32  #0x44
    const/4 v2, 0x3

    if-ne v12, v2, :cond_7b

    and-int/lit8 v2, v10, -0x8

    or-int/lit8 v17, v2, 0x4

    nop

    invoke-direct {v0, v15}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v2

    move-object/from16 v3, p2

    move-wide v8, v4

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v10, v6

    move/from16 v6, v17

    move-object v0, v7

    move-object/from16 v7, p13

    invoke-static/range {v2 .. v7}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeGroupField(Lcom/android/framework/protobuf/Schema;[BIIILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    invoke-virtual {v10, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    if-ne v3, v11, :cond_5a

    invoke-virtual {v10, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v16

    goto :goto_5b

    :cond_5a
    nop

    :goto_5b
    move-object/from16 v3, v16

    if-nez v3, :cond_65

    iget-object v4, v0, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-virtual {v10, v1, v13, v14, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_6e

    :cond_65
    iget-object v4, v0, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/android/framework/protobuf/Internal;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v10, v1, v13, v14, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_6e
    invoke-virtual {v10, v1, v8, v9, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move-wide v6, v8

    move-object v4, v10

    move-object/from16 v9, p2

    move/from16 v10, p5

    move-object v8, v0

    move v0, v2

    goto/16 :goto_29c

    :cond_7b
    move-wide v8, v4

    move-object v10, v6

    move-object v0, v7

    move/from16 v5, p3

    move-wide v6, v8

    move-object v4, v10

    move-object/from16 v9, p2

    move/from16 v10, p5

    move-object v8, v0

    goto/16 :goto_29b

    :pswitch_89  #0x43
    move-wide v8, v4

    move-object v10, v6

    move-object v0, v7

    if-nez v12, :cond_af

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-wide v6, v8

    invoke-static {v4, v5, v0}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint64([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    iget-wide v8, v0, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->long1:J

    invoke-static {v8, v9}, Lcom/android/framework/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v10, v1, v13, v14, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v10, v1, v6, v7, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move-object v8, v0

    move v0, v2

    move-object v9, v4

    move-object v4, v10

    move/from16 v10, p5

    goto/16 :goto_29c

    :cond_af
    move-object/from16 v4, p2

    move/from16 v5, p3

    move-wide v6, v8

    move-object v8, v0

    move-object v9, v4

    move-object v4, v10

    move/from16 v10, p5

    goto/16 :goto_29b

    :pswitch_bb  #0x42
    move-object v10, v6

    move-object v0, v7

    move-wide v6, v4

    move-object v4, v8

    move v5, v9

    if-nez v12, :cond_de

    invoke-static {v4, v5, v0}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    iget v3, v0, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-static {v3}, Lcom/android/framework/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v1, v13, v14, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v10, v1, v6, v7, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move-object v8, v0

    move v0, v2

    move-object v9, v4

    move-object v4, v10

    move/from16 v10, p5

    goto/16 :goto_29c

    :cond_de
    move-object v8, v0

    move-object v9, v4

    move-object v4, v10

    move/from16 v10, p5

    goto/16 :goto_29b

    :pswitch_e5  #0x3f
    move-object v10, v6

    move-object v0, v7

    move-wide v6, v4

    move-object v4, v8

    move v5, v9

    if-nez v12, :cond_12e

    invoke-static {v4, v5, v0}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    iget v3, v0, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    move-object v8, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/framework/protobuf/MessageSchema;->getEnumFieldVerifier(I)Lcom/android/framework/protobuf/Internal$EnumVerifier;

    move-result-object v5

    if-eqz v5, :cond_119

    invoke-interface {v5, v3}, Lcom/android/framework/protobuf/Internal$EnumVerifier;->isInRange(I)Z

    move-result v9

    if-eqz v9, :cond_107

    move-object/from16 p3, v5

    move-object v5, v10

    move/from16 v10, p5

    goto :goto_11e

    :cond_107
    invoke-static/range {p1 .. p1}, Lcom/android/framework/protobuf/MessageSchema;->getMutableUnknownFields(Ljava/lang/Object;)Lcom/android/framework/protobuf/UnknownFieldSetLite;

    move-result-object v9

    move-object/from16 p3, v5

    int-to-long v4, v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object v5, v10

    move/from16 v10, p5

    invoke-virtual {v9, v10, v4}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    goto :goto_128

    :cond_119
    move-object/from16 p3, v5

    move-object v5, v10

    move/from16 v10, p5

    :goto_11e
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v1, v13, v14, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v5, v1, v6, v7, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_128
    move-object/from16 v9, p2

    move v0, v2

    move-object v4, v5

    goto/16 :goto_29c

    :cond_12e
    move-object v8, v0

    move-object v4, v10

    move-object/from16 v0, p0

    move/from16 v10, p5

    move-object/from16 v9, p2

    goto/16 :goto_29b

    :pswitch_138  #0x3d
    move-object v8, v7

    move-wide/from16 v20, v4

    move-object v4, v6

    move-wide/from16 v6, v20

    move v5, v9

    if-ne v12, v3, :cond_152

    move-object/from16 v9, p2

    invoke-static {v9, v5, v8}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeBytes([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    iget-object v3, v8, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-virtual {v4, v1, v13, v14, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v4, v1, v6, v7, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move v0, v2

    goto/16 :goto_29c

    :cond_152
    move-object/from16 v9, p2

    goto/16 :goto_29b

    :pswitch_156  #0x3c
    move-wide/from16 v20, v4

    move-object v4, v6

    move v5, v9

    move-object v9, v8

    move-object v8, v7

    move-wide/from16 v6, v20

    if-ne v12, v3, :cond_190

    nop

    invoke-direct {v0, v15}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v2

    move/from16 v3, p4

    invoke-static {v2, v9, v5, v3, v8}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeMessageField(Lcom/android/framework/protobuf/Schema;[BIILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    if-ne v5, v11, :cond_176

    invoke-virtual {v4, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v16

    goto :goto_177

    :cond_176
    nop

    :goto_177
    move-object/from16 v5, v16

    if-nez v5, :cond_181

    iget-object v0, v8, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-virtual {v4, v1, v13, v14, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_18a

    :cond_181
    iget-object v0, v8, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-static {v5, v0}, Lcom/android/framework/protobuf/Internal;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v1, v13, v14, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_18a
    invoke-virtual {v4, v1, v6, v7, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move v0, v2

    goto/16 :goto_29c

    :cond_190
    move/from16 v3, p4

    goto/16 :goto_29b

    :pswitch_194  #0x3b
    move-wide/from16 v20, v4

    move-object v4, v6

    move v5, v9

    move-object v9, v8

    move-object v8, v7

    move-wide/from16 v6, v20

    if-ne v12, v3, :cond_29b

    invoke-static {v9, v5, v8}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget v2, v8, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    if-nez v2, :cond_1ac

    const-string v3, ""

    invoke-virtual {v4, v1, v13, v14, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_1cb

    :cond_1ac
    const/high16 v3, 0x20000000

    and-int v3, p8, v3

    if-eqz v3, :cond_1c0

    add-int v3, v0, v2

    invoke-static {v9, v0, v3}, Lcom/android/framework/protobuf/Utf8;->isValidUtf8([BII)Z

    move-result v3

    if-eqz v3, :cond_1bb

    goto :goto_1c0

    :cond_1bb
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v3

    throw v3

    :cond_1c0
    :goto_1c0
    new-instance v3, Ljava/lang/String;

    sget-object v5, Lcom/android/framework/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v9, v0, v2, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v4, v1, v13, v14, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/2addr v0, v2

    :goto_1cb
    invoke-virtual {v4, v1, v6, v7, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_29c

    :pswitch_1d0  #0x3a
    move-wide/from16 v20, v4

    move-object v4, v6

    move v5, v9

    move-object v9, v8

    move-object v8, v7

    move-wide/from16 v6, v20

    if-nez v12, :cond_29b

    invoke-static {v9, v5, v8}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint64([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget-wide v2, v8, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->long1:J

    const-wide/16 v18, 0x0

    cmp-long v2, v2, v18

    if-eqz v2, :cond_1e8

    const/4 v3, 0x1

    goto :goto_1e9

    :cond_1e8
    const/4 v3, 0x0

    :goto_1e9
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v4, v1, v13, v14, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v4, v1, v6, v7, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_29c

    :pswitch_1f5  #0x39, 0x40
    move-wide/from16 v20, v4

    move-object v4, v6

    move v5, v9

    move-object v9, v8

    move-object v8, v7

    move-wide/from16 v6, v20

    if-ne v12, v2, :cond_29b

    invoke-static/range {p2 .. p3}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeFixed32([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v1, v13, v14, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v0, v5, 0x4

    invoke-virtual {v4, v1, v6, v7, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_29c

    :pswitch_211  #0x38, 0x41
    move-wide/from16 v20, v4

    move-object v4, v6

    move v5, v9

    move-object v9, v8

    move-object v8, v7

    move-wide/from16 v6, v20

    const/4 v0, 0x1

    if-ne v12, v0, :cond_29b

    invoke-static/range {p2 .. p3}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeFixed64([BI)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v1, v13, v14, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v0, v5, 0x8

    invoke-virtual {v4, v1, v6, v7, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_29c

    :pswitch_22e  #0x37, 0x3e
    move-wide/from16 v20, v4

    move-object v4, v6

    move v5, v9

    move-object v9, v8

    move-object v8, v7

    move-wide/from16 v6, v20

    if-nez v12, :cond_29b

    invoke-static {v9, v5, v8}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget v2, v8, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v1, v13, v14, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v4, v1, v6, v7, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_29c

    :pswitch_249  #0x35, 0x36
    move-wide/from16 v20, v4

    move-object v4, v6

    move v5, v9

    move-object v9, v8

    move-object v8, v7

    move-wide/from16 v6, v20

    if-nez v12, :cond_29b

    invoke-static {v9, v5, v8}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint64([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget-wide v2, v8, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->long1:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v1, v13, v14, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v4, v1, v6, v7, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_29c

    :pswitch_264  #0x34
    move-wide/from16 v20, v4

    move-object v4, v6

    move v5, v9

    move-object v9, v8

    move-object v8, v7

    move-wide/from16 v6, v20

    if-ne v12, v2, :cond_29b

    invoke-static/range {p2 .. p3}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeFloat([BI)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v4, v1, v13, v14, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v0, v5, 0x4

    invoke-virtual {v4, v1, v6, v7, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_29c

    :pswitch_27f  #0x33
    move-wide/from16 v20, v4

    move-object v4, v6

    move v5, v9

    move-object v9, v8

    move-object v8, v7

    move-wide/from16 v6, v20

    const/4 v0, 0x1

    if-ne v12, v0, :cond_29b

    invoke-static/range {p2 .. p3}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeDouble([BI)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v4, v1, v13, v14, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v0, v5, 0x8

    invoke-virtual {v4, v1, v6, v7, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_29c

    :cond_29b
    :goto_29b
    move v0, v5

    :goto_29c
    return v0

    nop

    :pswitch_data_29e
    .packed-switch 0x33
        :pswitch_27f  #00000033
        :pswitch_264  #00000034
        :pswitch_249  #00000035
        :pswitch_249  #00000036
        :pswitch_22e  #00000037
        :pswitch_211  #00000038
        :pswitch_1f5  #00000039
        :pswitch_1d0  #0000003a
        :pswitch_194  #0000003b
        :pswitch_156  #0000003c
        :pswitch_138  #0000003d
        :pswitch_22e  #0000003e
        :pswitch_e5  #0000003f
        :pswitch_1f5  #00000040
        :pswitch_211  #00000041
        :pswitch_bb  #00000042
        :pswitch_89  #00000043
        :pswitch_32  #00000044
    .end packed-switch
.end method

.method private parseProto3Message(Ljava/lang/Object;[BIILcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .registers 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Lcom/android/framework/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    sget-object v9, Lcom/android/framework/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    move v3, v2

    move v2, v1

    move v1, v0

    move/from16 v0, p3

    :goto_14
    if-ge v0, v13, :cond_412

    add-int/lit8 v4, v0, 0x1

    aget-byte v0, v12, v0

    if-gez v0, :cond_26

    invoke-static {v0, v12, v4, v11}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32(I[BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v4

    iget v0, v11, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    move/from16 v16, v0

    move v10, v4

    goto :goto_29

    :cond_26
    move/from16 v16, v0

    move v10, v4

    :goto_29
    ushr-int/lit8 v8, v16, 0x3

    and-int/lit8 v7, v16, 0x7

    if-le v8, v2, :cond_37

    div-int/lit8 v0, v3, 0x3

    invoke-direct {v15, v8, v0}, Lcom/android/framework/protobuf/MessageSchema;->positionForFieldNumber(II)I

    move-result v0

    move v6, v0

    goto :goto_3c

    :cond_37
    invoke-direct {v15, v8}, Lcom/android/framework/protobuf/MessageSchema;->positionForFieldNumber(I)I

    move-result v0

    move v6, v0

    :goto_3c
    move/from16 v17, v8

    const/4 v0, -0x1

    if-ne v6, v0, :cond_4c

    const/4 v0, 0x0

    move/from16 v20, v0

    move/from16 p3, v7

    move/from16 v18, v8

    move-object/from16 v22, v9

    goto/16 :goto_3ec

    :cond_4c
    iget-object v0, v15, Lcom/android/framework/protobuf/MessageSchema;->buffer:[I

    add-int/lit8 v1, v6, 0x1

    aget v4, v0, v1

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->type(I)I

    move-result v5

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    const/16 v0, 0x11

    const/4 v1, 0x2

    if-gt v5, v0, :cond_2b2

    const/4 v0, 0x1

    packed-switch v5, :pswitch_data_41e

    move/from16 v21, v4

    move/from16 v23, v5

    move/from16 v22, v8

    move-object/from16 v20, v9

    move-wide v8, v2

    move v14, v7

    move/from16 v19, v10

    move/from16 v18, v22

    move-object/from16 v22, v20

    move/from16 v20, v6

    goto/16 :goto_3ae

    :pswitch_77  #0x10
    if-nez v7, :cond_9a

    invoke-static {v12, v10, v11}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint64([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v10

    iget-wide v0, v11, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->long1:J

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide v18

    move-object v0, v9

    move-object/from16 v1, p1

    move-wide/from16 v20, v2

    move/from16 v23, v5

    move/from16 v22, v8

    move v8, v4

    move-wide/from16 v4, v18

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move v3, v6

    move v0, v10

    move/from16 v1, v16

    move/from16 v2, v17

    goto/16 :goto_14

    :cond_9a
    move-wide/from16 v20, v2

    move/from16 v23, v5

    move/from16 v22, v8

    move v8, v4

    move/from16 v20, v6

    move v14, v7

    move/from16 v19, v10

    move/from16 v18, v22

    move-object/from16 v22, v9

    goto/16 :goto_3ae

    :pswitch_ac  #0xf
    move-wide/from16 v20, v2

    move/from16 v23, v5

    move/from16 v22, v8

    move v8, v4

    if-nez v7, :cond_cb

    invoke-static {v12, v10, v11}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget v1, v11, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-static {v1}, Lcom/android/framework/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result v1

    move-wide/from16 v4, v20

    invoke-virtual {v9, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move v3, v6

    move/from16 v1, v16

    move/from16 v2, v17

    goto/16 :goto_14

    :cond_cb
    move-wide/from16 v4, v20

    move/from16 v20, v6

    move v14, v7

    move/from16 v19, v10

    move/from16 v18, v22

    move-object/from16 v22, v9

    goto/16 :goto_3ae

    :pswitch_d8  #0xc
    move/from16 v23, v5

    move/from16 v22, v8

    move v8, v4

    move-wide v4, v2

    if-nez v7, :cond_f0

    invoke-static {v12, v10, v11}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget v1, v11, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-virtual {v9, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move v3, v6

    move/from16 v1, v16

    move/from16 v2, v17

    goto/16 :goto_14

    :cond_f0
    move/from16 v20, v6

    move v14, v7

    move/from16 v19, v10

    move/from16 v18, v22

    move-object/from16 v22, v9

    goto/16 :goto_3ae

    :pswitch_fb  #0xa
    move/from16 v23, v5

    move/from16 v22, v8

    move v8, v4

    move-wide v4, v2

    if-ne v7, v1, :cond_113

    invoke-static {v12, v10, v11}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeBytes([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget-object v1, v11, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-virtual {v9, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move v3, v6

    move/from16 v1, v16

    move/from16 v2, v17

    goto/16 :goto_14

    :cond_113
    move/from16 v20, v6

    move v14, v7

    move/from16 v19, v10

    move/from16 v18, v22

    move-object/from16 v22, v9

    goto/16 :goto_3ae

    :pswitch_11e  #0x9
    move/from16 v23, v5

    move/from16 v22, v8

    move v8, v4

    move-wide v4, v2

    if-ne v7, v1, :cond_14c

    nop

    invoke-direct {v15, v6}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v0

    invoke-static {v0, v12, v10, v13, v11}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeMessageField(Lcom/android/framework/protobuf/Schema;[BIILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    invoke-virtual {v9, v14, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_13b

    iget-object v2, v11, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-virtual {v9, v14, v4, v5, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_145

    :cond_13b
    iget-object v2, v11, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/framework/protobuf/Internal;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v9, v14, v4, v5, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    nop

    :goto_145
    move v3, v6

    move/from16 v1, v16

    move/from16 v2, v17

    goto/16 :goto_14

    :cond_14c
    move/from16 v20, v6

    move v14, v7

    move/from16 v19, v10

    move/from16 v18, v22

    move-object/from16 v22, v9

    goto/16 :goto_3ae

    :pswitch_157  #0x8
    move/from16 v23, v5

    move/from16 v22, v8

    move v8, v4

    move-wide v4, v2

    if-ne v7, v1, :cond_179

    const/high16 v0, 0x20000000

    and-int/2addr v0, v8

    if-nez v0, :cond_169

    invoke-static {v12, v10, v11}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeString([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    goto :goto_16d

    :cond_169
    invoke-static {v12, v10, v11}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeStringRequireUtf8([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    :goto_16d
    iget-object v1, v11, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-virtual {v9, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move v3, v6

    move/from16 v1, v16

    move/from16 v2, v17

    goto/16 :goto_14

    :cond_179
    move/from16 v20, v6

    move v14, v7

    move/from16 v19, v10

    move/from16 v18, v22

    move-object/from16 v22, v9

    goto/16 :goto_3ae

    :pswitch_184  #0x7
    move/from16 v23, v5

    move/from16 v22, v8

    move v8, v4

    move-wide v4, v2

    if-nez v7, :cond_1a5

    invoke-static {v12, v10, v11}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint64([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    iget-wide v2, v11, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->long1:J

    const-wide/16 v18, 0x0

    cmp-long v2, v2, v18

    if-eqz v2, :cond_199

    goto :goto_19a

    :cond_199
    const/4 v0, 0x0

    :goto_19a
    invoke-static {v14, v4, v5, v0}, Lcom/android/framework/protobuf/UnsafeUtil;->putBoolean(Ljava/lang/Object;JZ)V

    move v0, v1

    move v3, v6

    move/from16 v1, v16

    move/from16 v2, v17

    goto/16 :goto_14

    :cond_1a5
    move/from16 v20, v6

    move v14, v7

    move/from16 v19, v10

    move/from16 v18, v22

    move-object/from16 v22, v9

    goto/16 :goto_3ae

    :pswitch_1b0  #0x6, 0xd
    move/from16 v23, v5

    move/from16 v22, v8

    move v8, v4

    move-wide v4, v2

    const/4 v0, 0x5

    if-ne v7, v0, :cond_1c9

    invoke-static {v12, v10}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeFixed32([BI)I

    move-result v0

    invoke-virtual {v9, v14, v4, v5, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v0, v10, 0x4

    move v3, v6

    move/from16 v1, v16

    move/from16 v2, v17

    goto/16 :goto_14

    :cond_1c9
    move/from16 v20, v6

    move v14, v7

    move/from16 v19, v10

    move/from16 v18, v22

    move-object/from16 v22, v9

    goto/16 :goto_3ae

    :pswitch_1d4  #0x5, 0xe
    move/from16 v23, v5

    move/from16 v22, v8

    move v8, v4

    move-wide v4, v2

    if-ne v7, v0, :cond_1f4

    invoke-static {v12, v10}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeFixed64([BI)J

    move-result-wide v18

    move-object v0, v9

    move-object/from16 v1, p1

    move-wide v2, v4

    move-wide/from16 v24, v4

    move-wide/from16 v4, v18

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    add-int/lit8 v0, v10, 0x8

    move v3, v6

    move/from16 v1, v16

    move/from16 v2, v17

    goto/16 :goto_14

    :cond_1f4
    move-wide/from16 v24, v4

    move/from16 v20, v6

    move v14, v7

    move/from16 v19, v10

    move/from16 v18, v22

    move-object/from16 v22, v9

    goto/16 :goto_3ae

    :pswitch_201  #0x4, 0xb
    move-wide/from16 v24, v2

    move/from16 v23, v5

    move/from16 v22, v8

    move v8, v4

    if-nez v7, :cond_21c

    invoke-static {v12, v10, v11}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget v1, v11, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    move-wide/from16 v4, v24

    invoke-virtual {v9, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move v3, v6

    move/from16 v1, v16

    move/from16 v2, v17

    goto/16 :goto_14

    :cond_21c
    move-wide/from16 v4, v24

    move/from16 v20, v6

    move v14, v7

    move/from16 v19, v10

    move/from16 v18, v22

    move-object/from16 v22, v9

    goto/16 :goto_3ae

    :pswitch_229  #0x2, 0x3
    move/from16 v23, v5

    move/from16 v22, v8

    move v8, v4

    move-wide v4, v2

    if-nez v7, :cond_251

    invoke-static {v12, v10, v11}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint64([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v10

    iget-wide v2, v11, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->long1:J

    move-object v0, v9

    move-object/from16 v1, p1

    move-wide/from16 v18, v2

    move-wide v2, v4

    move/from16 v21, v8

    move-object/from16 v20, v9

    move-wide v8, v4

    move-wide/from16 v4, v18

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move v3, v6

    move v0, v10

    move/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v9, v20

    goto/16 :goto_14

    :cond_251
    move/from16 v21, v8

    move-object/from16 v20, v9

    move-wide v8, v4

    move v14, v7

    move/from16 v19, v10

    move/from16 v18, v22

    move-object/from16 v22, v20

    move/from16 v20, v6

    goto/16 :goto_3ae

    :pswitch_261  #0x1
    move/from16 v21, v4

    move/from16 v23, v5

    move/from16 v22, v8

    move-object/from16 v20, v9

    move-wide v8, v2

    const/4 v0, 0x5

    if-ne v7, v0, :cond_27f

    invoke-static {v12, v10}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeFloat([BI)F

    move-result v0

    invoke-static {v14, v8, v9, v0}, Lcom/android/framework/protobuf/UnsafeUtil;->putFloat(Ljava/lang/Object;JF)V

    add-int/lit8 v0, v10, 0x4

    move v3, v6

    move/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v9, v20

    goto/16 :goto_14

    :cond_27f
    move v14, v7

    move/from16 v19, v10

    move/from16 v18, v22

    move-object/from16 v22, v20

    move/from16 v20, v6

    goto/16 :goto_3ae

    :pswitch_28a  #0x0
    move/from16 v21, v4

    move/from16 v23, v5

    move/from16 v22, v8

    move-object/from16 v20, v9

    move-wide v8, v2

    if-ne v7, v0, :cond_2a7

    invoke-static {v12, v10}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeDouble([BI)D

    move-result-wide v0

    invoke-static {v14, v8, v9, v0, v1}, Lcom/android/framework/protobuf/UnsafeUtil;->putDouble(Ljava/lang/Object;JD)V

    add-int/lit8 v0, v10, 0x8

    move v3, v6

    move/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v9, v20

    goto/16 :goto_14

    :cond_2a7
    move v14, v7

    move/from16 v19, v10

    move/from16 v18, v22

    move-object/from16 v22, v20

    move/from16 v20, v6

    goto/16 :goto_3ae

    :cond_2b2
    move/from16 v21, v4

    move/from16 v23, v5

    move/from16 v22, v8

    move-object/from16 v20, v9

    move-wide v8, v2

    const/16 v0, 0x1b

    if-ne v5, v0, :cond_318

    if-ne v7, v1, :cond_30a

    move-object/from16 v4, v20

    invoke-virtual {v4, v14, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/framework/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_2e5

    invoke-interface {v0}, Lcom/android/framework/protobuf/Internal$ProtobufList;->size()I

    move-result v1

    nop

    if-nez v1, :cond_2d9

    const/16 v2, 0xa

    goto :goto_2db

    :cond_2d9
    mul-int/lit8 v2, v1, 0x2

    :goto_2db
    invoke-interface {v0, v2}, Lcom/android/framework/protobuf/Internal$ProtobufList;->mutableCopyWithCapacity(I)Lcom/android/framework/protobuf/Internal$ProtobufList;

    move-result-object v0

    invoke-virtual {v4, v14, v8, v9, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object/from16 v18, v0

    goto :goto_2e7

    :cond_2e5
    move-object/from16 v18, v0

    :goto_2e7
    nop

    invoke-direct {v15, v6}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v0

    move/from16 v1, v16

    move-object/from16 v2, p2

    move v3, v10

    move-object/from16 v19, v4

    move/from16 v4, p4

    move v15, v5

    move-object/from16 v5, v18

    move/from16 v20, v6

    move-object/from16 v6, p5

    invoke-static/range {v0 .. v6}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeMessageList(Lcom/android/framework/protobuf/Schema;I[BIILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    move-object/from16 v15, p0

    move/from16 v2, v17

    move-object/from16 v9, v19

    move/from16 v3, v20

    goto/16 :goto_14

    :cond_30a
    move v15, v5

    move-object/from16 v19, v20

    move/from16 v20, v6

    move v14, v7

    move/from16 v18, v22

    move-object/from16 v22, v19

    move/from16 v19, v10

    goto/16 :goto_3ae

    :cond_318
    move v15, v5

    move-object/from16 v19, v20

    move/from16 v20, v6

    const/16 v0, 0x31

    if-gt v15, v0, :cond_36c

    move v6, v10

    move/from16 v5, v21

    int-to-long v3, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v23, v3

    move v3, v10

    move/from16 v4, p4

    move/from16 v18, v5

    move/from16 v5, v16

    move/from16 v26, v6

    move/from16 v6, v22

    move/from16 p3, v7

    move-wide/from16 v27, v8

    move/from16 v21, v18

    move/from16 v18, v22

    move/from16 v8, v20

    move-object/from16 v22, v19

    move/from16 v19, v10

    move-wide/from16 v9, v23

    move v11, v15

    move-wide/from16 v12, v27

    move-object/from16 v14, p5

    invoke-direct/range {v0 .. v14}, Lcom/android/framework/protobuf/MessageSchema;->parseRepeatedField(Ljava/lang/Object;[BIIIIIIJIJLcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    move/from16 v1, v26

    if-eq v0, v1, :cond_369

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v20

    move-object/from16 v9, v22

    goto/16 :goto_14

    :cond_369
    move v10, v0

    goto/16 :goto_3ec

    :cond_36c
    move/from16 p3, v7

    move-wide/from16 v27, v8

    move/from16 v18, v22

    move-object/from16 v22, v19

    move/from16 v19, v10

    const/16 v0, 0x32

    if-ne v15, v0, :cond_3b3

    move/from16 v14, p3

    if-ne v14, v1, :cond_3ae

    move/from16 v9, v19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v19

    move/from16 v4, p4

    move/from16 v5, v20

    move-wide/from16 v6, v27

    move-object/from16 v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/framework/protobuf/MessageSchema;->parseMapField(Ljava/lang/Object;[BIIIJLcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    if-eq v0, v9, :cond_3aa

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v20

    move-object/from16 v9, v22

    goto/16 :goto_14

    :cond_3aa
    move v10, v0

    move/from16 p3, v14

    goto :goto_3ec

    :cond_3ae
    :goto_3ae
    move/from16 p3, v14

    move/from16 v10, v19

    goto :goto_3ec

    :cond_3b3
    move/from16 v14, p3

    move/from16 v13, v19

    nop

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v19

    move/from16 v4, p4

    move/from16 v5, v16

    move/from16 v6, v18

    move v7, v14

    move/from16 v8, v21

    move v9, v15

    move-wide/from16 v10, v27

    move/from16 v12, v20

    move v14, v13

    move-object/from16 v13, p5

    invoke-direct/range {v0 .. v13}, Lcom/android/framework/protobuf/MessageSchema;->parseOneofField(Ljava/lang/Object;[BIIIIIIIJILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    if-eq v0, v14, :cond_3eb

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v20

    move-object/from16 v9, v22

    goto/16 :goto_14

    :cond_3eb
    move v10, v0

    :goto_3ec
    nop

    invoke-static/range {p1 .. p1}, Lcom/android/framework/protobuf/MessageSchema;->getMutableUnknownFields(Ljava/lang/Object;)Lcom/android/framework/protobuf/UnknownFieldSetLite;

    move-result-object v4

    move/from16 v0, v16

    move-object/from16 v1, p2

    move v2, v10

    move/from16 v3, p4

    move-object/from16 v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeUnknownField(I[BIILcom/android/framework/protobuf/UnknownFieldSetLite;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v20

    move-object/from16 v9, v22

    goto/16 :goto_14

    :cond_412
    move-object/from16 v22, v9

    move/from16 v4, p4

    if-ne v0, v4, :cond_419

    return v0

    :cond_419
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5

    :pswitch_data_41e
    .packed-switch 0x0
        :pswitch_28a  #00000000
        :pswitch_261  #00000001
        :pswitch_229  #00000002
        :pswitch_229  #00000003
        :pswitch_201  #00000004
        :pswitch_1d4  #00000005
        :pswitch_1b0  #00000006
        :pswitch_184  #00000007
        :pswitch_157  #00000008
        :pswitch_11e  #00000009
        :pswitch_fb  #0000000a
        :pswitch_201  #0000000b
        :pswitch_d8  #0000000c
        :pswitch_1b0  #0000000d
        :pswitch_1d4  #0000000e
        :pswitch_ac  #0000000f
        :pswitch_77  #00000010
    .end packed-switch
.end method

.method private parseRepeatedField(Ljava/lang/Object;[BIIIIIIJIJLcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .registers 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIIIIIIJIJ",
            "Lcom/android/framework/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p7

    move/from16 v12, p8

    move-wide/from16 v13, p12

    move-object/from16 v15, p14

    sget-object v2, Lcom/android/framework/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/framework/protobuf/Internal$ProtobufList;

    invoke-interface {v3}, Lcom/android/framework/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v4

    if-nez v4, :cond_33

    invoke-interface {v3}, Lcom/android/framework/protobuf/Internal$ProtobufList;->size()I

    move-result v4

    nop

    if-nez v4, :cond_28

    const/16 v5, 0xa

    goto :goto_2a

    :cond_28
    mul-int/lit8 v5, v4, 0x2

    :goto_2a
    invoke-interface {v3, v5}, Lcom/android/framework/protobuf/Internal$ProtobufList;->mutableCopyWithCapacity(I)Lcom/android/framework/protobuf/Internal$ProtobufList;

    move-result-object v3

    invoke-virtual {v2, v1, v13, v14, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v8, v3

    goto :goto_34

    :cond_33
    move-object v8, v3

    :goto_34
    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x2

    packed-switch p11, :pswitch_data_21c

    move/from16 v14, p6

    move-object v13, v8

    goto/16 :goto_219

    :pswitch_3f  #0x31
    const/4 v2, 0x3

    if-ne v11, v2, :cond_5b

    nop

    invoke-direct {v0, v12}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v2

    move/from16 v3, p5

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object v7, v8

    move-object v13, v8

    move-object/from16 v8, p14

    invoke-static/range {v2 .. v8}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeGroupList(Lcom/android/framework/protobuf/Schema;I[BIILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    move/from16 v14, p6

    goto/16 :goto_21a

    :cond_5b
    move-object v13, v8

    move/from16 v14, p6

    goto/16 :goto_219

    :pswitch_60  #0x22, 0x30
    move-object v13, v8

    if-ne v11, v4, :cond_6b

    invoke-static {v9, v10, v13, v15}, Lcom/android/framework/protobuf/ArrayDecoders;->decodePackedSInt64List([BILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    move/from16 v14, p6

    goto/16 :goto_21a

    :cond_6b
    if-nez v11, :cond_80

    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v13

    move-object/from16 v7, p14

    invoke-static/range {v2 .. v7}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeSInt64List(I[BIILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    move/from16 v14, p6

    goto/16 :goto_21a

    :cond_80
    move/from16 v14, p6

    goto/16 :goto_219

    :pswitch_84  #0x21, 0x2f
    move-object v13, v8

    if-ne v11, v4, :cond_8f

    invoke-static {v9, v10, v13, v15}, Lcom/android/framework/protobuf/ArrayDecoders;->decodePackedSInt32List([BILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    move/from16 v14, p6

    goto/16 :goto_21a

    :cond_8f
    if-nez v11, :cond_a4

    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v13

    move-object/from16 v7, p14

    invoke-static/range {v2 .. v7}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeSInt32List(I[BIILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    move/from16 v14, p6

    goto/16 :goto_21a

    :cond_a4
    move/from16 v14, p6

    goto/16 :goto_219

    :pswitch_a8  #0x1e, 0x2c
    move-object v13, v8

    if-ne v11, v4, :cond_b0

    invoke-static {v9, v10, v13, v15}, Lcom/android/framework/protobuf/ArrayDecoders;->decodePackedVarint32List([BILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    goto :goto_c1

    :cond_b0
    if-nez v11, :cond_e6

    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v13

    move-object/from16 v7, p14

    invoke-static/range {v2 .. v7}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32List(I[BIILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    :goto_c1
    move-object v3, v1

    check-cast v3, Lcom/android/framework/protobuf/GeneratedMessageLite;

    iget-object v3, v3, Lcom/android/framework/protobuf/GeneratedMessageLite;->unknownFields:Lcom/android/framework/protobuf/UnknownFieldSetLite;

    invoke-static {}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->getDefaultInstance()Lcom/android/framework/protobuf/UnknownFieldSetLite;

    move-result-object v4

    if-ne v3, v4, :cond_cd

    const/4 v3, 0x0

    :cond_cd
    nop

    invoke-direct {v0, v12}, Lcom/android/framework/protobuf/MessageSchema;->getEnumFieldVerifier(I)Lcom/android/framework/protobuf/Internal$EnumVerifier;

    move-result-object v4

    iget-object v5, v0, Lcom/android/framework/protobuf/MessageSchema;->unknownFieldSchema:Lcom/android/framework/protobuf/UnknownFieldSchema;

    move/from16 v14, p6

    invoke-static {v14, v13, v4, v3, v5}, Lcom/android/framework/protobuf/SchemaUtil;->filterUnknownEnumList(ILjava/util/List;Lcom/android/framework/protobuf/Internal$EnumVerifier;Ljava/lang/Object;Lcom/android/framework/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    check-cast v3, Lcom/android/framework/protobuf/UnknownFieldSetLite;

    if-eqz v3, :cond_21a

    move-object v4, v1

    check-cast v4, Lcom/android/framework/protobuf/GeneratedMessageLite;

    iput-object v3, v4, Lcom/android/framework/protobuf/GeneratedMessageLite;->unknownFields:Lcom/android/framework/protobuf/UnknownFieldSetLite;

    goto/16 :goto_21a

    :cond_e6
    move/from16 v14, p6

    goto/16 :goto_219

    :pswitch_ea  #0x1c
    move/from16 v14, p6

    move-object v13, v8

    if-ne v11, v4, :cond_219

    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v13

    move-object/from16 v7, p14

    invoke-static/range {v2 .. v7}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeBytesList(I[BIILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    goto/16 :goto_21a

    :pswitch_100  #0x1b
    move/from16 v14, p6

    move-object v13, v8

    if-ne v11, v4, :cond_219

    nop

    invoke-direct {v0, v12}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v2

    move/from16 v3, p5

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object v7, v13

    move-object/from16 v8, p14

    invoke-static/range {v2 .. v8}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeMessageList(Lcom/android/framework/protobuf/Schema;I[BIILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    goto/16 :goto_21a

    :pswitch_11b  #0x1a
    move/from16 v14, p6

    move-object v13, v8

    if-ne v11, v4, :cond_219

    const-wide/32 v2, 0x20000000

    and-long v2, p9, v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_13c

    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v13

    move-object/from16 v7, p14

    invoke-static/range {v2 .. v7}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeStringList(I[BIILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    goto/16 :goto_21a

    :cond_13c
    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v13

    move-object/from16 v7, p14

    invoke-static/range {v2 .. v7}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeStringListRequireUtf8(I[BIILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    goto/16 :goto_21a

    :pswitch_14d  #0x19, 0x2a
    move/from16 v14, p6

    move-object v13, v8

    if-ne v11, v4, :cond_158

    invoke-static {v9, v10, v13, v15}, Lcom/android/framework/protobuf/ArrayDecoders;->decodePackedBoolList([BILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    goto/16 :goto_21a

    :cond_158
    if-nez v11, :cond_219

    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v13

    move-object/from16 v7, p14

    invoke-static/range {v2 .. v7}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeBoolList(I[BIILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    goto/16 :goto_21a

    :pswitch_16b  #0x18, 0x1f, 0x29, 0x2d
    move/from16 v14, p6

    move-object v13, v8

    if-ne v11, v4, :cond_176

    invoke-static {v9, v10, v13, v15}, Lcom/android/framework/protobuf/ArrayDecoders;->decodePackedFixed32List([BILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    goto/16 :goto_21a

    :cond_176
    if-ne v11, v2, :cond_219

    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v13

    move-object/from16 v7, p14

    invoke-static/range {v2 .. v7}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeFixed32List(I[BIILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    goto/16 :goto_21a

    :pswitch_189  #0x17, 0x20, 0x28, 0x2e
    move/from16 v14, p6

    move-object v13, v8

    if-ne v11, v4, :cond_194

    invoke-static {v9, v10, v13, v15}, Lcom/android/framework/protobuf/ArrayDecoders;->decodePackedFixed64List([BILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    goto/16 :goto_21a

    :cond_194
    if-ne v11, v3, :cond_219

    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v13

    move-object/from16 v7, p14

    invoke-static/range {v2 .. v7}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeFixed64List(I[BIILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    goto/16 :goto_21a

    :pswitch_1a7  #0x16, 0x1d, 0x27, 0x2b
    move/from16 v14, p6

    move-object v13, v8

    if-ne v11, v4, :cond_1b2

    invoke-static {v9, v10, v13, v15}, Lcom/android/framework/protobuf/ArrayDecoders;->decodePackedVarint32List([BILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    goto/16 :goto_21a

    :cond_1b2
    if-nez v11, :cond_219

    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v13

    move-object/from16 v7, p14

    invoke-static/range {v2 .. v7}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32List(I[BIILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    goto/16 :goto_21a

    :pswitch_1c5  #0x14, 0x15, 0x25, 0x26
    move/from16 v14, p6

    move-object v13, v8

    if-ne v11, v4, :cond_1cf

    invoke-static {v9, v10, v13, v15}, Lcom/android/framework/protobuf/ArrayDecoders;->decodePackedVarint64List([BILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    goto :goto_21a

    :cond_1cf
    if-nez v11, :cond_219

    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v13

    move-object/from16 v7, p14

    invoke-static/range {v2 .. v7}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint64List(I[BIILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    goto :goto_21a

    :pswitch_1e1  #0x13, 0x24
    move/from16 v14, p6

    move-object v13, v8

    if-ne v11, v4, :cond_1eb

    invoke-static {v9, v10, v13, v15}, Lcom/android/framework/protobuf/ArrayDecoders;->decodePackedFloatList([BILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    goto :goto_21a

    :cond_1eb
    if-ne v11, v2, :cond_219

    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v13

    move-object/from16 v7, p14

    invoke-static/range {v2 .. v7}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeFloatList(I[BIILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    goto :goto_21a

    :pswitch_1fd  #0x12, 0x23
    move/from16 v14, p6

    move-object v13, v8

    if-ne v11, v4, :cond_207

    invoke-static {v9, v10, v13, v15}, Lcom/android/framework/protobuf/ArrayDecoders;->decodePackedDoubleList([BILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    goto :goto_21a

    :cond_207
    if-ne v11, v3, :cond_219

    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v13

    move-object/from16 v7, p14

    invoke-static/range {v2 .. v7}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeDoubleList(I[BIILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    goto :goto_21a

    :cond_219
    :goto_219
    move v2, v10

    :cond_21a
    :goto_21a
    return v2

    nop

    :pswitch_data_21c
    .packed-switch 0x12
        :pswitch_1fd  #00000012
        :pswitch_1e1  #00000013
        :pswitch_1c5  #00000014
        :pswitch_1c5  #00000015
        :pswitch_1a7  #00000016
        :pswitch_189  #00000017
        :pswitch_16b  #00000018
        :pswitch_14d  #00000019
        :pswitch_11b  #0000001a
        :pswitch_100  #0000001b
        :pswitch_ea  #0000001c
        :pswitch_1a7  #0000001d
        :pswitch_a8  #0000001e
        :pswitch_16b  #0000001f
        :pswitch_189  #00000020
        :pswitch_84  #00000021
        :pswitch_60  #00000022
        :pswitch_1fd  #00000023
        :pswitch_1e1  #00000024
        :pswitch_1c5  #00000025
        :pswitch_1c5  #00000026
        :pswitch_1a7  #00000027
        :pswitch_189  #00000028
        :pswitch_16b  #00000029
        :pswitch_14d  #0000002a
        :pswitch_1a7  #0000002b
        :pswitch_a8  #0000002c
        :pswitch_16b  #0000002d
        :pswitch_189  #0000002e
        :pswitch_84  #0000002f
        :pswitch_60  #00000030
        :pswitch_3f  #00000031
    .end packed-switch
.end method

.method private positionForFieldNumber(I)I
    .registers 3

    iget v0, p0, Lcom/android/framework/protobuf/MessageSchema;->minFieldNumber:I

    if-lt p1, v0, :cond_e

    iget v0, p0, Lcom/android/framework/protobuf/MessageSchema;->maxFieldNumber:I

    if-gt p1, v0, :cond_e

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/framework/protobuf/MessageSchema;->slowPositionForFieldNumber(II)I

    move-result v0

    return v0

    :cond_e
    const/4 v0, -0x1

    return v0
.end method

.method private positionForFieldNumber(II)I
    .registers 4

    iget v0, p0, Lcom/android/framework/protobuf/MessageSchema;->minFieldNumber:I

    if-lt p1, v0, :cond_d

    iget v0, p0, Lcom/android/framework/protobuf/MessageSchema;->maxFieldNumber:I

    if-gt p1, v0, :cond_d

    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/MessageSchema;->slowPositionForFieldNumber(II)I

    move-result v0

    return v0

    :cond_d
    const/4 v0, -0x1

    return v0
.end method

.method private presenceMaskAndOffsetAt(I)I
    .registers 4

    iget-object v0, p0, Lcom/android/framework/protobuf/MessageSchema;->buffer:[I

    add-int/lit8 v1, p1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method private readGroupList(Ljava/lang/Object;JLcom/android/framework/protobuf/Reader;Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J",
            "Lcom/android/framework/protobuf/Reader;",
            "Lcom/android/framework/protobuf/Schema<",
            "TE;>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/framework/protobuf/MessageSchema;->listFieldSchema:Lcom/android/framework/protobuf/ListFieldSchema;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/framework/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    invoke-interface {p4, v0, p5, p6}, Lcom/android/framework/protobuf/Reader;->readGroupList(Ljava/util/List;Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private readMessageList(Ljava/lang/Object;ILcom/android/framework/protobuf/Reader;Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "I",
            "Lcom/android/framework/protobuf/Reader;",
            "Lcom/android/framework/protobuf/Schema<",
            "TE;>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/framework/protobuf/MessageSchema;->listFieldSchema:Lcom/android/framework/protobuf/ListFieldSchema;

    invoke-virtual {v2, p1, v0, v1}, Lcom/android/framework/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    invoke-interface {p3, v2, p4, p5}, Lcom/android/framework/protobuf/Reader;->readMessageList(Ljava/util/List;Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private readString(Ljava/lang/Object;ILcom/android/framework/protobuf/Reader;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2}, Lcom/android/framework/protobuf/MessageSchema;->isEnforceUtf8(I)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {p2}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v0

    invoke-interface {p3}, Lcom/android/framework/protobuf/Reader;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_2d

    :cond_12
    iget-boolean v0, p0, Lcom/android/framework/protobuf/MessageSchema;->lite:Z

    if-eqz v0, :cond_22

    invoke-static {p2}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v0

    invoke-interface {p3}, Lcom/android/framework/protobuf/Reader;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_2d

    :cond_22
    invoke-static {p2}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v0

    invoke-interface {p3}, Lcom/android/framework/protobuf/Reader;->readBytes()Lcom/android/framework/protobuf/ByteString;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_2d
    return-void
.end method

.method private readStringList(Ljava/lang/Object;ILcom/android/framework/protobuf/Reader;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2}, Lcom/android/framework/protobuf/MessageSchema;->isEnforceUtf8(I)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/framework/protobuf/MessageSchema;->listFieldSchema:Lcom/android/framework/protobuf/ListFieldSchema;

    invoke-static {p2}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/framework/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/android/framework/protobuf/Reader;->readStringListRequireUtf8(Ljava/util/List;)V

    goto :goto_21

    :cond_14
    iget-object v0, p0, Lcom/android/framework/protobuf/MessageSchema;->listFieldSchema:Lcom/android/framework/protobuf/ListFieldSchema;

    invoke-static {p2}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/framework/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/android/framework/protobuf/Reader;->readStringList(Ljava/util/List;)V

    :goto_21
    return-void
.end method

.method private static reflectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    :catch_5
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v2, :cond_1e

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    return-object v4

    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_1e
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Field "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not found. Known fields are "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private setFieldPresent(Ljava/lang/Object;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/framework/protobuf/MessageSchema;->proto3:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-direct {p0, p2}, Lcom/android/framework/protobuf/MessageSchema;->presenceMaskAndOffsetAt(I)I

    move-result v0

    const/4 v1, 0x1

    ushr-int/lit8 v2, v0, 0x14

    shl-int/2addr v1, v2

    const v2, 0xfffff

    and-int/2addr v2, v0

    int-to-long v2, v2

    nop

    invoke-static {p1, v2, v3}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v4

    or-int/2addr v4, v1

    invoke-static {p1, v2, v3, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    return-void
.end method

.method private setOneofPresent(Ljava/lang/Object;II)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)V"
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/android/framework/protobuf/MessageSchema;->presenceMaskAndOffsetAt(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v1, v0

    int-to-long v1, v1

    invoke-static {p1, v1, v2, p2}, Lcom/android/framework/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    return-void
.end method

.method private slowPositionForFieldNumber(II)I
    .registers 7

    iget-object v0, p0, Lcom/android/framework/protobuf/MessageSchema;->buffer:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, -0x1

    :goto_7
    if-gt p2, v0, :cond_1e

    add-int v1, v0, p2

    ushr-int/lit8 v1, v1, 0x1

    mul-int/lit8 v2, v1, 0x3

    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    if-ne p1, v3, :cond_16

    return v2

    :cond_16
    if-ge p1, v3, :cond_1b

    add-int/lit8 v0, v1, -0x1

    goto :goto_1d

    :cond_1b
    add-int/lit8 p2, v1, 0x1

    :goto_1d
    goto :goto_7

    :cond_1e
    const/4 v1, -0x1

    return v1
.end method

.method private static storeFieldData(Lcom/android/framework/protobuf/FieldInfo;[IIZ[Ljava/lang/Object;)V
    .registers 14

    invoke-virtual {p0}, Lcom/android/framework/protobuf/FieldInfo;->getOneof()Lcom/android/framework/protobuf/OneofInfo;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-virtual {p0}, Lcom/android/framework/protobuf/FieldInfo;->getType()Lcom/android/framework/protobuf/FieldType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/framework/protobuf/FieldType;->id()I

    move-result v1

    add-int/lit8 v1, v1, 0x33

    invoke-virtual {v0}, Lcom/android/framework/protobuf/OneofInfo;->getValueField()Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-static {v2}, Lcom/android/framework/protobuf/UnsafeUtil;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v0}, Lcom/android/framework/protobuf/OneofInfo;->getCaseField()Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-static {v3}, Lcom/android/framework/protobuf/UnsafeUtil;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v3

    long-to-int v3, v3

    const/4 v4, 0x0

    goto :goto_71

    :cond_24
    invoke-virtual {p0}, Lcom/android/framework/protobuf/FieldInfo;->getType()Lcom/android/framework/protobuf/FieldType;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/framework/protobuf/FieldInfo;->getField()Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-static {v2}, Lcom/android/framework/protobuf/UnsafeUtil;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v1}, Lcom/android/framework/protobuf/FieldType;->id()I

    move-result v3

    if-nez p3, :cond_58

    invoke-virtual {v1}, Lcom/android/framework/protobuf/FieldType;->isList()Z

    move-result v4

    if-nez v4, :cond_58

    invoke-virtual {v1}, Lcom/android/framework/protobuf/FieldType;->isMap()Z

    move-result v4

    if-nez v4, :cond_58

    invoke-virtual {p0}, Lcom/android/framework/protobuf/FieldInfo;->getPresenceField()Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-static {v4}, Lcom/android/framework/protobuf/UnsafeUtil;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {p0}, Lcom/android/framework/protobuf/FieldInfo;->getPresenceMask()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v5

    move v1, v3

    move v3, v4

    move v4, v5

    goto :goto_71

    :cond_58
    invoke-virtual {p0}, Lcom/android/framework/protobuf/FieldInfo;->getCachedSizeField()Ljava/lang/reflect/Field;

    move-result-object v4

    if-nez v4, :cond_64

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v1, v3

    move v3, v4

    move v4, v5

    goto :goto_71

    :cond_64
    invoke-virtual {p0}, Lcom/android/framework/protobuf/FieldInfo;->getCachedSizeField()Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-static {v4}, Lcom/android/framework/protobuf/UnsafeUtil;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    long-to-int v4, v4

    const/4 v5, 0x0

    move v1, v3

    move v3, v4

    move v4, v5

    :goto_71
    invoke-virtual {p0}, Lcom/android/framework/protobuf/FieldInfo;->getFieldNumber()I

    move-result v5

    aput v5, p1, p2

    add-int/lit8 v5, p2, 0x1

    invoke-virtual {p0}, Lcom/android/framework/protobuf/FieldInfo;->isEnforceUtf8()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_83

    const/high16 v6, 0x20000000

    goto :goto_84

    :cond_83
    move v6, v7

    :goto_84
    invoke-virtual {p0}, Lcom/android/framework/protobuf/FieldInfo;->isRequired()Z

    move-result v8

    if-eqz v8, :cond_8c

    const/high16 v7, 0x10000000

    :cond_8c
    or-int/2addr v6, v7

    shl-int/lit8 v7, v1, 0x14

    or-int/2addr v6, v7

    or-int/2addr v6, v2

    aput v6, p1, v5

    add-int/lit8 v5, p2, 0x2

    shl-int/lit8 v6, v4, 0x14

    or-int/2addr v6, v3

    aput v6, p1, v5

    invoke-virtual {p0}, Lcom/android/framework/protobuf/FieldInfo;->getMessageFieldClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/framework/protobuf/FieldInfo;->getMapDefaultEntry()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_cc

    div-int/lit8 v6, p2, 0x3

    mul-int/lit8 v6, v6, 0x2

    invoke-virtual {p0}, Lcom/android/framework/protobuf/FieldInfo;->getMapDefaultEntry()Ljava/lang/Object;

    move-result-object v7

    aput-object v7, p4, v6

    if-eqz v5, :cond_b9

    div-int/lit8 v6, p2, 0x3

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x1

    aput-object v5, p4, v6

    goto :goto_e9

    :cond_b9
    invoke-virtual {p0}, Lcom/android/framework/protobuf/FieldInfo;->getEnumVerifier()Lcom/android/framework/protobuf/Internal$EnumVerifier;

    move-result-object v6

    if-eqz v6, :cond_e9

    div-int/lit8 v6, p2, 0x3

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p0}, Lcom/android/framework/protobuf/FieldInfo;->getEnumVerifier()Lcom/android/framework/protobuf/Internal$EnumVerifier;

    move-result-object v7

    aput-object v7, p4, v6

    goto :goto_e9

    :cond_cc
    if-eqz v5, :cond_d7

    div-int/lit8 v6, p2, 0x3

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x1

    aput-object v5, p4, v6

    goto :goto_e9

    :cond_d7
    invoke-virtual {p0}, Lcom/android/framework/protobuf/FieldInfo;->getEnumVerifier()Lcom/android/framework/protobuf/Internal$EnumVerifier;

    move-result-object v6

    if-eqz v6, :cond_e9

    div-int/lit8 v6, p2, 0x3

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p0}, Lcom/android/framework/protobuf/FieldInfo;->getEnumVerifier()Lcom/android/framework/protobuf/Internal$EnumVerifier;

    move-result-object v7

    aput-object v7, p4, v6

    :cond_e9
    :goto_e9
    return-void
.end method

.method private static type(I)I
    .registers 2

    const/high16 v0, 0xff00000

    and-int/2addr v0, p0

    ushr-int/lit8 v0, v0, 0x14

    return v0
.end method

.method private typeAndOffsetAt(I)I
    .registers 4

    iget-object v0, p0, Lcom/android/framework/protobuf/MessageSchema;->buffer:[I

    add-int/lit8 v1, p1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method private writeFieldsInAscendingOrderProto2(Ljava/lang/Object;Lcom/android/framework/protobuf/Writer;)V
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/android/framework/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-boolean v5, v0, Lcom/android/framework/protobuf/MessageSchema;->hasExtensions:Z

    if-eqz v5, :cond_23

    iget-object v5, v0, Lcom/android/framework/protobuf/MessageSchema;->extensionSchema:Lcom/android/framework/protobuf/ExtensionSchema;

    invoke-virtual {v5, v1}, Lcom/android/framework/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Lcom/android/framework/protobuf/FieldSet;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/framework/protobuf/FieldSet;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_23

    invoke-virtual {v5}, Lcom/android/framework/protobuf/FieldSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v4, v6

    check-cast v4, Ljava/util/Map$Entry;

    :cond_23
    const/4 v5, -0x1

    const/4 v6, 0x0

    iget-object v7, v0, Lcom/android/framework/protobuf/MessageSchema;->buffer:[I

    array-length v7, v7

    sget-object v8, Lcom/android/framework/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    const/4 v9, 0x0

    :goto_2b
    if-ge v9, v7, :cond_5c1

    invoke-direct {v0, v9}, Lcom/android/framework/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v11

    invoke-direct {v0, v9}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v12

    invoke-static {v11}, Lcom/android/framework/protobuf/MessageSchema;->type(I)I

    move-result v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    iget-boolean v10, v0, Lcom/android/framework/protobuf/MessageSchema;->proto3:Z

    move-object/from16 v17, v4

    if-nez v10, :cond_64

    const/16 v10, 0x11

    if-gt v13, v10, :cond_64

    iget-object v10, v0, Lcom/android/framework/protobuf/MessageSchema;->buffer:[I

    add-int/lit8 v18, v9, 0x2

    aget v14, v10, v18

    const v10, 0xfffff

    and-int/2addr v10, v14

    if-eq v10, v5, :cond_5b

    move v5, v10

    move/from16 v19, v5

    int-to-long v4, v10

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    move/from16 v5, v19

    :cond_5b
    ushr-int/lit8 v4, v14, 0x14

    const/16 v18, 0x1

    shl-int v15, v18, v4

    move-object/from16 v4, v17

    goto :goto_66

    :cond_64
    move-object/from16 v4, v17

    :goto_66
    if-eqz v4, :cond_85

    iget-object v10, v0, Lcom/android/framework/protobuf/MessageSchema;->extensionSchema:Lcom/android/framework/protobuf/ExtensionSchema;

    invoke-virtual {v10, v4}, Lcom/android/framework/protobuf/ExtensionSchema;->extensionNumber(Ljava/util/Map$Entry;)I

    move-result v10

    if-gt v10, v12, :cond_85

    iget-object v10, v0, Lcom/android/framework/protobuf/MessageSchema;->extensionSchema:Lcom/android/framework/protobuf/ExtensionSchema;

    invoke-virtual {v10, v2, v4}, Lcom/android/framework/protobuf/ExtensionSchema;->serializeExtension(Lcom/android/framework/protobuf/Writer;Ljava/util/Map$Entry;)V

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_82

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    goto :goto_83

    :cond_82
    const/4 v10, 0x0

    :goto_83
    move-object v4, v10

    goto :goto_66

    :cond_85
    move-object/from16 v17, v4

    move v10, v5

    invoke-static {v11}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v4

    move/from16 v19, v7

    const/4 v7, 0x0

    packed-switch v13, :pswitch_data_5e2

    move/from16 v16, v10

    move/from16 v20, v11

    goto/16 :goto_5b7

    :pswitch_98  #0x44
    invoke-direct {v0, v1, v12, v9}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_ae

    nop

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    move/from16 v16, v10

    invoke-direct {v0, v9}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v10

    invoke-interface {v2, v12, v7, v10}, Lcom/android/framework/protobuf/Writer;->writeGroup(ILjava/lang/Object;Lcom/android/framework/protobuf/Schema;)V

    goto/16 :goto_5b7

    :cond_ae
    move/from16 v16, v10

    goto/16 :goto_5b7

    :pswitch_b2  #0x43
    move/from16 v16, v10

    invoke-direct {v0, v1, v12, v9}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_c5

    move/from16 v20, v11

    invoke-static {v1, v4, v5}, Lcom/android/framework/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {v2, v12, v10, v11}, Lcom/android/framework/protobuf/Writer;->writeSInt64(IJ)V

    goto/16 :goto_5b7

    :cond_c5
    move/from16 v20, v11

    goto/16 :goto_5b7

    :pswitch_c9  #0x42
    move/from16 v16, v10

    move/from16 v20, v11

    invoke-direct {v0, v1, v12, v9}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_5b7

    invoke-static {v1, v4, v5}, Lcom/android/framework/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v7

    invoke-interface {v2, v12, v7}, Lcom/android/framework/protobuf/Writer;->writeSInt32(II)V

    goto/16 :goto_5b7

    :pswitch_dc  #0x41
    move/from16 v16, v10

    move/from16 v20, v11

    invoke-direct {v0, v1, v12, v9}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_5b7

    invoke-static {v1, v4, v5}, Lcom/android/framework/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {v2, v12, v10, v11}, Lcom/android/framework/protobuf/Writer;->writeSFixed64(IJ)V

    goto/16 :goto_5b7

    :pswitch_ef  #0x40
    move/from16 v16, v10

    move/from16 v20, v11

    invoke-direct {v0, v1, v12, v9}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_5b7

    invoke-static {v1, v4, v5}, Lcom/android/framework/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v7

    invoke-interface {v2, v12, v7}, Lcom/android/framework/protobuf/Writer;->writeSFixed32(II)V

    goto/16 :goto_5b7

    :pswitch_102  #0x3f
    move/from16 v16, v10

    move/from16 v20, v11

    invoke-direct {v0, v1, v12, v9}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_5b7

    invoke-static {v1, v4, v5}, Lcom/android/framework/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v7

    invoke-interface {v2, v12, v7}, Lcom/android/framework/protobuf/Writer;->writeEnum(II)V

    goto/16 :goto_5b7

    :pswitch_115  #0x3e
    move/from16 v16, v10

    move/from16 v20, v11

    invoke-direct {v0, v1, v12, v9}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_5b7

    invoke-static {v1, v4, v5}, Lcom/android/framework/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v7

    invoke-interface {v2, v12, v7}, Lcom/android/framework/protobuf/Writer;->writeUInt32(II)V

    goto/16 :goto_5b7

    :pswitch_128  #0x3d
    move/from16 v16, v10

    move/from16 v20, v11

    invoke-direct {v0, v1, v12, v9}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_5b7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/framework/protobuf/ByteString;

    invoke-interface {v2, v12, v7}, Lcom/android/framework/protobuf/Writer;->writeBytes(ILcom/android/framework/protobuf/ByteString;)V

    goto/16 :goto_5b7

    :pswitch_13d  #0x3c
    move/from16 v16, v10

    move/from16 v20, v11

    invoke-direct {v0, v1, v12, v9}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_5b7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    invoke-direct {v0, v9}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v10

    invoke-interface {v2, v12, v7, v10}, Lcom/android/framework/protobuf/Writer;->writeMessage(ILjava/lang/Object;Lcom/android/framework/protobuf/Schema;)V

    goto/16 :goto_5b7

    :pswitch_154  #0x3b
    move/from16 v16, v10

    move/from16 v20, v11

    invoke-direct {v0, v1, v12, v9}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_5b7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    invoke-direct {v0, v12, v7, v2}, Lcom/android/framework/protobuf/MessageSchema;->writeString(ILjava/lang/Object;Lcom/android/framework/protobuf/Writer;)V

    goto/16 :goto_5b7

    :pswitch_167  #0x3a
    move/from16 v16, v10

    move/from16 v20, v11

    invoke-direct {v0, v1, v12, v9}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_5b7

    invoke-static {v1, v4, v5}, Lcom/android/framework/protobuf/MessageSchema;->oneofBooleanAt(Ljava/lang/Object;J)Z

    move-result v7

    invoke-interface {v2, v12, v7}, Lcom/android/framework/protobuf/Writer;->writeBool(IZ)V

    goto/16 :goto_5b7

    :pswitch_17a  #0x39
    move/from16 v16, v10

    move/from16 v20, v11

    invoke-direct {v0, v1, v12, v9}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_5b7

    invoke-static {v1, v4, v5}, Lcom/android/framework/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v7

    invoke-interface {v2, v12, v7}, Lcom/android/framework/protobuf/Writer;->writeFixed32(II)V

    goto/16 :goto_5b7

    :pswitch_18d  #0x38
    move/from16 v16, v10

    move/from16 v20, v11

    invoke-direct {v0, v1, v12, v9}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_5b7

    invoke-static {v1, v4, v5}, Lcom/android/framework/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {v2, v12, v10, v11}, Lcom/android/framework/protobuf/Writer;->writeFixed64(IJ)V

    goto/16 :goto_5b7

    :pswitch_1a0  #0x37
    move/from16 v16, v10

    move/from16 v20, v11

    invoke-direct {v0, v1, v12, v9}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_5b7

    invoke-static {v1, v4, v5}, Lcom/android/framework/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v7

    invoke-interface {v2, v12, v7}, Lcom/android/framework/protobuf/Writer;->writeInt32(II)V

    goto/16 :goto_5b7

    :pswitch_1b3  #0x36
    move/from16 v16, v10

    move/from16 v20, v11

    invoke-direct {v0, v1, v12, v9}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_5b7

    invoke-static {v1, v4, v5}, Lcom/android/framework/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {v2, v12, v10, v11}, Lcom/android/framework/protobuf/Writer;->writeUInt64(IJ)V

    goto/16 :goto_5b7

    :pswitch_1c6  #0x35
    move/from16 v16, v10

    move/from16 v20, v11

    invoke-direct {v0, v1, v12, v9}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_5b7

    invoke-static {v1, v4, v5}, Lcom/android/framework/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {v2, v12, v10, v11}, Lcom/android/framework/protobuf/Writer;->writeInt64(IJ)V

    goto/16 :goto_5b7

    :pswitch_1d9  #0x34
    move/from16 v16, v10

    move/from16 v20, v11

    invoke-direct {v0, v1, v12, v9}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_5b7

    invoke-static {v1, v4, v5}, Lcom/android/framework/protobuf/MessageSchema;->oneofFloatAt(Ljava/lang/Object;J)F

    move-result v7

    invoke-interface {v2, v12, v7}, Lcom/android/framework/protobuf/Writer;->writeFloat(IF)V

    goto/16 :goto_5b7

    :pswitch_1ec  #0x33
    move/from16 v16, v10

    move/from16 v20, v11

    invoke-direct {v0, v1, v12, v9}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_5b7

    invoke-static {v1, v4, v5}, Lcom/android/framework/protobuf/MessageSchema;->oneofDoubleAt(Ljava/lang/Object;J)D

    move-result-wide v10

    invoke-interface {v2, v12, v10, v11}, Lcom/android/framework/protobuf/Writer;->writeDouble(ID)V

    goto/16 :goto_5b7

    :pswitch_1ff  #0x32
    move/from16 v16, v10

    move/from16 v20, v11

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    invoke-direct {v0, v2, v12, v7, v9}, Lcom/android/framework/protobuf/MessageSchema;->writeMapHelper(Lcom/android/framework/protobuf/Writer;ILjava/lang/Object;I)V

    goto/16 :goto_5b7

    :pswitch_20c  #0x31
    move/from16 v16, v10

    move/from16 v20, v11

    invoke-direct {v0, v9}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-direct {v0, v9}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v11

    invoke-static {v7, v10, v2, v11}, Lcom/android/framework/protobuf/SchemaUtil;->writeGroupList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Lcom/android/framework/protobuf/Schema;)V

    goto/16 :goto_5b7

    :pswitch_223  #0x30
    move/from16 v16, v10

    move/from16 v20, v11

    invoke-direct {v0, v9}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    const/4 v11, 0x1

    invoke-static {v7, v10, v2, v11}, Lcom/android/framework/protobuf/SchemaUtil;->writeSInt64List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5b7

    :pswitch_237  #0x2f
    move/from16 v16, v10

    move/from16 v20, v11

    const/4 v11, 0x1

    invoke-direct {v0, v9}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v7, v10, v2, v11}, Lcom/android/framework/protobuf/SchemaUtil;->writeSInt32List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5b7

    :pswitch_24b  #0x2e
    move/from16 v16, v10

    move/from16 v20, v11

    const/4 v11, 0x1

    invoke-direct {v0, v9}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v7, v10, v2, v11}, Lcom/android/framework/protobuf/SchemaUtil;->writeSFixed64List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5b7

    :pswitch_25f  #0x2d
    move/from16 v16, v10

    move/from16 v20, v11

    const/4 v11, 0x1

    invoke-direct {v0, v9}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v7, v10, v2, v11}, Lcom/android/framework/protobuf/SchemaUtil;->writeSFixed32List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5b7

    :pswitch_273  #0x2c
    move/from16 v16, v10

    move/from16 v20, v11

    const/4 v11, 0x1

    invoke-direct {v0, v9}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v7, v10, v2, v11}, Lcom/android/framework/protobuf/SchemaUtil;->writeEnumList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5b7

    :pswitch_287  #0x2b
    move/from16 v16, v10

    move/from16 v20, v11

    const/4 v11, 0x1

    invoke-direct {v0, v9}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v7, v10, v2, v11}, Lcom/android/framework/protobuf/SchemaUtil;->writeUInt32List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5b7

    :pswitch_29b  #0x2a
    move/from16 v16, v10

    move/from16 v20, v11

    const/4 v11, 0x1

    invoke-direct {v0, v9}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v7, v10, v2, v11}, Lcom/android/framework/protobuf/SchemaUtil;->writeBoolList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5b7

    :pswitch_2af  #0x29
    move/from16 v16, v10

    move/from16 v20, v11

    const/4 v11, 0x1

    invoke-direct {v0, v9}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v7, v10, v2, v11}, Lcom/android/framework/protobuf/SchemaUtil;->writeFixed32List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5b7

    :pswitch_2c3  #0x28
    move/from16 v16, v10

    move/from16 v20, v11

    const/4 v11, 0x1

    invoke-direct {v0, v9}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v7, v10, v2, v11}, Lcom/android/framework/protobuf/SchemaUtil;->writeFixed64List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5b7

    :pswitch_2d7  #0x27
    move/from16 v16, v10

    move/from16 v20, v11

    const/4 v11, 0x1

    invoke-direct {v0, v9}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v7, v10, v2, v11}, Lcom/android/framework/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5b7

    :pswitch_2eb  #0x26
    move/from16 v16, v10

    move/from16 v20, v11

    const/4 v11, 0x1

    invoke-direct {v0, v9}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v7, v10, v2, v11}, Lcom/android/framework/protobuf/SchemaUtil;->writeUInt64List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5b7

    :pswitch_2ff  #0x25
    move/from16 v16, v10

    move/from16 v20, v11

    const/4 v11, 0x1

    invoke-direct {v0, v9}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v7, v10, v2, v11}, Lcom/android/framework/protobuf/SchemaUtil;->writeInt64List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5b7

    :pswitch_313  #0x24
    move/from16 v16, v10

    move/from16 v20, v11

    const/4 v11, 0x1

    invoke-direct {v0, v9}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v7, v10, v2, v11}, Lcom/android/framework/protobuf/SchemaUtil;->writeFloatList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5b7

    :pswitch_327  #0x23
    move/from16 v16, v10

    move/from16 v20, v11

    const/4 v11, 0x1

    invoke-direct {v0, v9}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v7, v10, v2, v11}, Lcom/android/framework/protobuf/SchemaUtil;->writeDoubleList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5b7

    :pswitch_33b  #0x22
    move/from16 v16, v10

    move/from16 v20, v11

    invoke-direct {v0, v9}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v10

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-static {v10, v11, v2, v7}, Lcom/android/framework/protobuf/SchemaUtil;->writeSInt64List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5b7

    :pswitch_34e  #0x21
    move/from16 v16, v10

    move/from16 v20, v11

    invoke-direct {v0, v9}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v10

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-static {v10, v11, v2, v7}, Lcom/android/framework/protobuf/SchemaUtil;->writeSInt32List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5b7

    :pswitch_361  #0x20
    move/from16 v16, v10

    move/from16 v20, v11

    invoke-direct {v0, v9}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v10

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-static {v10, v11, v2, v7}, Lcom/android/framework/protobuf/SchemaUtil;->writeSFixed64List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5b7

    :pswitch_374  #0x1f
    move/from16 v16, v10

    move/from16 v20, v11

    invoke-direct {v0, v9}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v10

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-static {v10, v11, v2, v7}, Lcom/android/framework/protobuf/SchemaUtil;->writeSFixed32List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5b7

    :pswitch_387  #0x1e
    move/from16 v16, v10

    move/from16 v20, v11

    invoke-direct {v0, v9}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v10

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-static {v10, v11, v2, v7}, Lcom/android/framework/protobuf/SchemaUtil;->writeEnumList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5b7

    :pswitch_39a  #0x1d
    move/from16 v16, v10

    move/from16 v20, v11

    invoke-direct {v0, v9}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v10

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-static {v10, v11, v2, v7}, Lcom/android/framework/protobuf/SchemaUtil;->writeUInt32List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5b7

    :pswitch_3ad  #0x1c
    move/from16 v16, v10

    move/from16 v20, v11

    invoke-direct {v0, v9}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v7, v10, v2}, Lcom/android/framework/protobuf/SchemaUtil;->writeBytesList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;)V

    goto/16 :goto_5b7

    :pswitch_3c0  #0x1b
    move/from16 v16, v10

    move/from16 v20, v11

    invoke-direct {v0, v9}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-direct {v0, v9}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v11

    invoke-static {v7, v10, v2, v11}, Lcom/android/framework/protobuf/SchemaUtil;->writeMessageList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Lcom/android/framework/protobuf/Schema;)V

    goto/16 :goto_5b7

    :pswitch_3d7  #0x1a
    move/from16 v16, v10

    move/from16 v20, v11

    invoke-direct {v0, v9}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v7, v10, v2}, Lcom/android/framework/protobuf/SchemaUtil;->writeStringList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;)V

    goto/16 :goto_5b7

    :pswitch_3ea  #0x19
    move/from16 v16, v10

    move/from16 v20, v11

    invoke-direct {v0, v9}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v10

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-static {v10, v11, v2, v7}, Lcom/android/framework/protobuf/SchemaUtil;->writeBoolList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5b7

    :pswitch_3fd  #0x18
    move/from16 v16, v10

    move/from16 v20, v11

    invoke-direct {v0, v9}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v10

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-static {v10, v11, v2, v7}, Lcom/android/framework/protobuf/SchemaUtil;->writeFixed32List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5b7

    :pswitch_410  #0x17
    move/from16 v16, v10

    move/from16 v20, v11

    invoke-direct {v0, v9}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v10

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-static {v10, v11, v2, v7}, Lcom/android/framework/protobuf/SchemaUtil;->writeFixed64List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5b7

    :pswitch_423  #0x16
    move/from16 v16, v10

    move/from16 v20, v11

    invoke-direct {v0, v9}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v10

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-static {v10, v11, v2, v7}, Lcom/android/framework/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5b7

    :pswitch_436  #0x15
    move/from16 v16, v10

    move/from16 v20, v11

    invoke-direct {v0, v9}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v10

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-static {v10, v11, v2, v7}, Lcom/android/framework/protobuf/SchemaUtil;->writeUInt64List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5b7

    :pswitch_449  #0x14
    move/from16 v16, v10

    move/from16 v20, v11

    invoke-direct {v0, v9}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v10

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-static {v10, v11, v2, v7}, Lcom/android/framework/protobuf/SchemaUtil;->writeInt64List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5b7

    :pswitch_45c  #0x13
    move/from16 v16, v10

    move/from16 v20, v11

    invoke-direct {v0, v9}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v10

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-static {v10, v11, v2, v7}, Lcom/android/framework/protobuf/SchemaUtil;->writeFloatList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5b7

    :pswitch_46f  #0x12
    move/from16 v16, v10

    move/from16 v20, v11

    invoke-direct {v0, v9}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v10

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-static {v10, v11, v2, v7}, Lcom/android/framework/protobuf/SchemaUtil;->writeDoubleList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5b7

    :pswitch_482  #0x11
    move/from16 v16, v10

    move/from16 v20, v11

    and-int v7, v6, v15

    if-eqz v7, :cond_5b7

    nop

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    invoke-direct {v0, v9}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v10

    invoke-interface {v2, v12, v7, v10}, Lcom/android/framework/protobuf/Writer;->writeGroup(ILjava/lang/Object;Lcom/android/framework/protobuf/Schema;)V

    goto/16 :goto_5b7

    :pswitch_498  #0x10
    move/from16 v16, v10

    move/from16 v20, v11

    and-int v7, v6, v15

    if-eqz v7, :cond_5b7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {v2, v12, v10, v11}, Lcom/android/framework/protobuf/Writer;->writeSInt64(IJ)V

    goto/16 :goto_5b7

    :pswitch_4a9  #0xf
    move/from16 v16, v10

    move/from16 v20, v11

    and-int v7, v6, v15

    if-eqz v7, :cond_5b7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v7

    invoke-interface {v2, v12, v7}, Lcom/android/framework/protobuf/Writer;->writeSInt32(II)V

    goto/16 :goto_5b7

    :pswitch_4ba  #0xe
    move/from16 v16, v10

    move/from16 v20, v11

    and-int v7, v6, v15

    if-eqz v7, :cond_5b7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {v2, v12, v10, v11}, Lcom/android/framework/protobuf/Writer;->writeSFixed64(IJ)V

    goto/16 :goto_5b7

    :pswitch_4cb  #0xd
    move/from16 v16, v10

    move/from16 v20, v11

    and-int v7, v6, v15

    if-eqz v7, :cond_5b7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v7

    invoke-interface {v2, v12, v7}, Lcom/android/framework/protobuf/Writer;->writeSFixed32(II)V

    goto/16 :goto_5b7

    :pswitch_4dc  #0xc
    move/from16 v16, v10

    move/from16 v20, v11

    and-int v7, v6, v15

    if-eqz v7, :cond_5b7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v7

    invoke-interface {v2, v12, v7}, Lcom/android/framework/protobuf/Writer;->writeEnum(II)V

    goto/16 :goto_5b7

    :pswitch_4ed  #0xb
    move/from16 v16, v10

    move/from16 v20, v11

    and-int v7, v6, v15

    if-eqz v7, :cond_5b7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v7

    invoke-interface {v2, v12, v7}, Lcom/android/framework/protobuf/Writer;->writeUInt32(II)V

    goto/16 :goto_5b7

    :pswitch_4fe  #0xa
    move/from16 v16, v10

    move/from16 v20, v11

    and-int v7, v6, v15

    if-eqz v7, :cond_5b7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/framework/protobuf/ByteString;

    invoke-interface {v2, v12, v7}, Lcom/android/framework/protobuf/Writer;->writeBytes(ILcom/android/framework/protobuf/ByteString;)V

    goto/16 :goto_5b7

    :pswitch_511  #0x9
    move/from16 v16, v10

    move/from16 v20, v11

    and-int v7, v6, v15

    if-eqz v7, :cond_5b7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    invoke-direct {v0, v9}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v10

    invoke-interface {v2, v12, v7, v10}, Lcom/android/framework/protobuf/Writer;->writeMessage(ILjava/lang/Object;Lcom/android/framework/protobuf/Schema;)V

    goto/16 :goto_5b7

    :pswitch_526  #0x8
    move/from16 v16, v10

    move/from16 v20, v11

    and-int v7, v6, v15

    if-eqz v7, :cond_5b7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    invoke-direct {v0, v12, v7, v2}, Lcom/android/framework/protobuf/MessageSchema;->writeString(ILjava/lang/Object;Lcom/android/framework/protobuf/Writer;)V

    goto/16 :goto_5b7

    :pswitch_537  #0x7
    move/from16 v16, v10

    move/from16 v20, v11

    and-int v7, v6, v15

    if-eqz v7, :cond_5b7

    invoke-static {v1, v4, v5}, Lcom/android/framework/protobuf/MessageSchema;->booleanAt(Ljava/lang/Object;J)Z

    move-result v7

    invoke-interface {v2, v12, v7}, Lcom/android/framework/protobuf/Writer;->writeBool(IZ)V

    goto/16 :goto_5b7

    :pswitch_548  #0x6
    move/from16 v16, v10

    move/from16 v20, v11

    and-int v7, v6, v15

    if-eqz v7, :cond_5b7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v7

    invoke-interface {v2, v12, v7}, Lcom/android/framework/protobuf/Writer;->writeFixed32(II)V

    goto :goto_5b7

    :pswitch_558  #0x5
    move/from16 v16, v10

    move/from16 v20, v11

    and-int v7, v6, v15

    if-eqz v7, :cond_5b7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {v2, v12, v10, v11}, Lcom/android/framework/protobuf/Writer;->writeFixed64(IJ)V

    goto :goto_5b7

    :pswitch_568  #0x4
    move/from16 v16, v10

    move/from16 v20, v11

    and-int v7, v6, v15

    if-eqz v7, :cond_5b7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v7

    invoke-interface {v2, v12, v7}, Lcom/android/framework/protobuf/Writer;->writeInt32(II)V

    goto :goto_5b7

    :pswitch_578  #0x3
    move/from16 v16, v10

    move/from16 v20, v11

    and-int v7, v6, v15

    if-eqz v7, :cond_5b7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {v2, v12, v10, v11}, Lcom/android/framework/protobuf/Writer;->writeUInt64(IJ)V

    goto :goto_5b7

    :pswitch_588  #0x2
    move/from16 v16, v10

    move/from16 v20, v11

    and-int v7, v6, v15

    if-eqz v7, :cond_5b7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {v2, v12, v10, v11}, Lcom/android/framework/protobuf/Writer;->writeInt64(IJ)V

    goto :goto_5b7

    :pswitch_598  #0x1
    move/from16 v16, v10

    move/from16 v20, v11

    and-int v7, v6, v15

    if-eqz v7, :cond_5b7

    invoke-static {v1, v4, v5}, Lcom/android/framework/protobuf/MessageSchema;->floatAt(Ljava/lang/Object;J)F

    move-result v7

    invoke-interface {v2, v12, v7}, Lcom/android/framework/protobuf/Writer;->writeFloat(IF)V

    goto :goto_5b7

    :pswitch_5a8  #0x0
    move/from16 v16, v10

    move/from16 v20, v11

    and-int v7, v6, v15

    if-eqz v7, :cond_5b7

    invoke-static {v1, v4, v5}, Lcom/android/framework/protobuf/MessageSchema;->doubleAt(Ljava/lang/Object;J)D

    move-result-wide v10

    invoke-interface {v2, v12, v10, v11}, Lcom/android/framework/protobuf/Writer;->writeDouble(ID)V

    :cond_5b7
    :goto_5b7
    add-int/lit8 v9, v9, 0x3

    move/from16 v5, v16

    move-object/from16 v4, v17

    move/from16 v7, v19

    goto/16 :goto_2b

    :cond_5c1
    move-object/from16 v17, v4

    move/from16 v19, v7

    :goto_5c5
    if-eqz v4, :cond_5dc

    iget-object v7, v0, Lcom/android/framework/protobuf/MessageSchema;->extensionSchema:Lcom/android/framework/protobuf/ExtensionSchema;

    invoke-virtual {v7, v2, v4}, Lcom/android/framework/protobuf/ExtensionSchema;->serializeExtension(Lcom/android/framework/protobuf/Writer;Ljava/util/Map$Entry;)V

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5d9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    goto :goto_5da

    :cond_5d9
    const/4 v7, 0x0

    :goto_5da
    move-object v4, v7

    goto :goto_5c5

    :cond_5dc
    iget-object v7, v0, Lcom/android/framework/protobuf/MessageSchema;->unknownFieldSchema:Lcom/android/framework/protobuf/UnknownFieldSchema;

    invoke-direct {v0, v7, v1, v2}, Lcom/android/framework/protobuf/MessageSchema;->writeUnknownInMessageTo(Lcom/android/framework/protobuf/UnknownFieldSchema;Ljava/lang/Object;Lcom/android/framework/protobuf/Writer;)V

    return-void

    :pswitch_data_5e2
    .packed-switch 0x0
        :pswitch_5a8  #00000000
        :pswitch_598  #00000001
        :pswitch_588  #00000002
        :pswitch_578  #00000003
        :pswitch_568  #00000004
        :pswitch_558  #00000005
        :pswitch_548  #00000006
        :pswitch_537  #00000007
        :pswitch_526  #00000008
        :pswitch_511  #00000009
        :pswitch_4fe  #0000000a
        :pswitch_4ed  #0000000b
        :pswitch_4dc  #0000000c
        :pswitch_4cb  #0000000d
        :pswitch_4ba  #0000000e
        :pswitch_4a9  #0000000f
        :pswitch_498  #00000010
        :pswitch_482  #00000011
        :pswitch_46f  #00000012
        :pswitch_45c  #00000013
        :pswitch_449  #00000014
        :pswitch_436  #00000015
        :pswitch_423  #00000016
        :pswitch_410  #00000017
        :pswitch_3fd  #00000018
        :pswitch_3ea  #00000019
        :pswitch_3d7  #0000001a
        :pswitch_3c0  #0000001b
        :pswitch_3ad  #0000001c
        :pswitch_39a  #0000001d
        :pswitch_387  #0000001e
        :pswitch_374  #0000001f
        :pswitch_361  #00000020
        :pswitch_34e  #00000021
        :pswitch_33b  #00000022
        :pswitch_327  #00000023
        :pswitch_313  #00000024
        :pswitch_2ff  #00000025
        :pswitch_2eb  #00000026
        :pswitch_2d7  #00000027
        :pswitch_2c3  #00000028
        :pswitch_2af  #00000029
        :pswitch_29b  #0000002a
        :pswitch_287  #0000002b
        :pswitch_273  #0000002c
        :pswitch_25f  #0000002d
        :pswitch_24b  #0000002e
        :pswitch_237  #0000002f
        :pswitch_223  #00000030
        :pswitch_20c  #00000031
        :pswitch_1ff  #00000032
        :pswitch_1ec  #00000033
        :pswitch_1d9  #00000034
        :pswitch_1c6  #00000035
        :pswitch_1b3  #00000036
        :pswitch_1a0  #00000037
        :pswitch_18d  #00000038
        :pswitch_17a  #00000039
        :pswitch_167  #0000003a
        :pswitch_154  #0000003b
        :pswitch_13d  #0000003c
        :pswitch_128  #0000003d
        :pswitch_115  #0000003e
        :pswitch_102  #0000003f
        :pswitch_ef  #00000040
        :pswitch_dc  #00000041
        :pswitch_c9  #00000042
        :pswitch_b2  #00000043
        :pswitch_98  #00000044
    .end packed-switch
.end method

.method private writeFieldsInAscendingOrderProto3(Ljava/lang/Object;Lcom/android/framework/protobuf/Writer;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/android/framework/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/android/framework/protobuf/MessageSchema;->hasExtensions:Z

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lcom/android/framework/protobuf/MessageSchema;->extensionSchema:Lcom/android/framework/protobuf/ExtensionSchema;

    invoke-virtual {v2, p1}, Lcom/android/framework/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Lcom/android/framework/protobuf/FieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/framework/protobuf/FieldSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1d

    invoke-virtual {v2}, Lcom/android/framework/protobuf/FieldSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Ljava/util/Map$Entry;

    :cond_1d
    iget-object v2, p0, Lcom/android/framework/protobuf/MessageSchema;->buffer:[I

    array-length v2, v2

    const/4 v3, 0x0

    :goto_21
    const/4 v4, 0x0

    if-ge v3, v2, :cond_5ab

    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v5

    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v6

    :goto_2c
    if-eqz v1, :cond_4b

    iget-object v7, p0, Lcom/android/framework/protobuf/MessageSchema;->extensionSchema:Lcom/android/framework/protobuf/ExtensionSchema;

    invoke-virtual {v7, v1}, Lcom/android/framework/protobuf/ExtensionSchema;->extensionNumber(Ljava/util/Map$Entry;)I

    move-result v7

    if-gt v7, v6, :cond_4b

    iget-object v7, p0, Lcom/android/framework/protobuf/MessageSchema;->extensionSchema:Lcom/android/framework/protobuf/ExtensionSchema;

    invoke-virtual {v7, p2, v1}, Lcom/android/framework/protobuf/ExtensionSchema;->serializeExtension(Lcom/android/framework/protobuf/Writer;Ljava/util/Map$Entry;)V

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_48

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    goto :goto_49

    :cond_48
    move-object v7, v4

    :goto_49
    move-object v1, v7

    goto :goto_2c

    :cond_4b
    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->type(I)I

    move-result v4

    const/4 v7, 0x1

    const/4 v8, 0x0

    packed-switch v4, :pswitch_data_5c8

    goto/16 :goto_5a7

    :pswitch_56  #0x44
    invoke-direct {p0, p1, v6, v3}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5a7

    nop

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v7

    invoke-interface {p2, v6, v4, v7}, Lcom/android/framework/protobuf/Writer;->writeGroup(ILjava/lang/Object;Lcom/android/framework/protobuf/Schema;)V

    goto/16 :goto_5a7

    :pswitch_6e  #0x43
    invoke-direct {p0, p1, v6, v3}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5a7

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/android/framework/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v7

    invoke-interface {p2, v6, v7, v8}, Lcom/android/framework/protobuf/Writer;->writeSInt64(IJ)V

    goto/16 :goto_5a7

    :pswitch_81  #0x42
    invoke-direct {p0, p1, v6, v3}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5a7

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/android/framework/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v6, v4}, Lcom/android/framework/protobuf/Writer;->writeSInt32(II)V

    goto/16 :goto_5a7

    :pswitch_94  #0x41
    invoke-direct {p0, p1, v6, v3}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5a7

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/android/framework/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v7

    invoke-interface {p2, v6, v7, v8}, Lcom/android/framework/protobuf/Writer;->writeSFixed64(IJ)V

    goto/16 :goto_5a7

    :pswitch_a7  #0x40
    invoke-direct {p0, p1, v6, v3}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5a7

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/android/framework/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v6, v4}, Lcom/android/framework/protobuf/Writer;->writeSFixed32(II)V

    goto/16 :goto_5a7

    :pswitch_ba  #0x3f
    invoke-direct {p0, p1, v6, v3}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5a7

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/android/framework/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v6, v4}, Lcom/android/framework/protobuf/Writer;->writeEnum(II)V

    goto/16 :goto_5a7

    :pswitch_cd  #0x3e
    invoke-direct {p0, p1, v6, v3}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5a7

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/android/framework/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v6, v4}, Lcom/android/framework/protobuf/Writer;->writeUInt32(II)V

    goto/16 :goto_5a7

    :pswitch_e0  #0x3d
    invoke-direct {p0, p1, v6, v3}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5a7

    nop

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/framework/protobuf/ByteString;

    invoke-interface {p2, v6, v4}, Lcom/android/framework/protobuf/Writer;->writeBytes(ILcom/android/framework/protobuf/ByteString;)V

    goto/16 :goto_5a7

    :pswitch_f6  #0x3c
    invoke-direct {p0, p1, v6, v3}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5a7

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v7

    invoke-interface {p2, v6, v4, v7}, Lcom/android/framework/protobuf/Writer;->writeMessage(ILjava/lang/Object;Lcom/android/framework/protobuf/Schema;)V

    goto/16 :goto_5a7

    :pswitch_10d  #0x3b
    invoke-direct {p0, p1, v6, v3}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5a7

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v6, v4, p2}, Lcom/android/framework/protobuf/MessageSchema;->writeString(ILjava/lang/Object;Lcom/android/framework/protobuf/Writer;)V

    goto/16 :goto_5a7

    :pswitch_120  #0x3a
    invoke-direct {p0, p1, v6, v3}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5a7

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/android/framework/protobuf/MessageSchema;->oneofBooleanAt(Ljava/lang/Object;J)Z

    move-result v4

    invoke-interface {p2, v6, v4}, Lcom/android/framework/protobuf/Writer;->writeBool(IZ)V

    goto/16 :goto_5a7

    :pswitch_133  #0x39
    invoke-direct {p0, p1, v6, v3}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5a7

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/android/framework/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v6, v4}, Lcom/android/framework/protobuf/Writer;->writeFixed32(II)V

    goto/16 :goto_5a7

    :pswitch_146  #0x38
    invoke-direct {p0, p1, v6, v3}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5a7

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/android/framework/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v7

    invoke-interface {p2, v6, v7, v8}, Lcom/android/framework/protobuf/Writer;->writeFixed64(IJ)V

    goto/16 :goto_5a7

    :pswitch_159  #0x37
    invoke-direct {p0, p1, v6, v3}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5a7

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/android/framework/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v6, v4}, Lcom/android/framework/protobuf/Writer;->writeInt32(II)V

    goto/16 :goto_5a7

    :pswitch_16c  #0x36
    invoke-direct {p0, p1, v6, v3}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5a7

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/android/framework/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v7

    invoke-interface {p2, v6, v7, v8}, Lcom/android/framework/protobuf/Writer;->writeUInt64(IJ)V

    goto/16 :goto_5a7

    :pswitch_17f  #0x35
    invoke-direct {p0, p1, v6, v3}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5a7

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/android/framework/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v7

    invoke-interface {p2, v6, v7, v8}, Lcom/android/framework/protobuf/Writer;->writeInt64(IJ)V

    goto/16 :goto_5a7

    :pswitch_192  #0x34
    invoke-direct {p0, p1, v6, v3}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5a7

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/android/framework/protobuf/MessageSchema;->oneofFloatAt(Ljava/lang/Object;J)F

    move-result v4

    invoke-interface {p2, v6, v4}, Lcom/android/framework/protobuf/Writer;->writeFloat(IF)V

    goto/16 :goto_5a7

    :pswitch_1a5  #0x33
    invoke-direct {p0, p1, v6, v3}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5a7

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/android/framework/protobuf/MessageSchema;->oneofDoubleAt(Ljava/lang/Object;J)D

    move-result-wide v7

    invoke-interface {p2, v6, v7, v8}, Lcom/android/framework/protobuf/Writer;->writeDouble(ID)V

    goto/16 :goto_5a7

    :pswitch_1b8  #0x32
    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, p2, v6, v4, v3}, Lcom/android/framework/protobuf/MessageSchema;->writeMapHelper(Lcom/android/framework/protobuf/Writer;ILjava/lang/Object;I)V

    goto/16 :goto_5a7

    :pswitch_1c5  #0x31
    nop

    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v8

    invoke-static {v4, v7, p2, v8}, Lcom/android/framework/protobuf/SchemaUtil;->writeGroupList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Lcom/android/framework/protobuf/Schema;)V

    goto/16 :goto_5a7

    :pswitch_1dd  #0x30
    nop

    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, p2, v7}, Lcom/android/framework/protobuf/SchemaUtil;->writeSInt64List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5a7

    :pswitch_1f1  #0x2f
    nop

    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, p2, v7}, Lcom/android/framework/protobuf/SchemaUtil;->writeSInt32List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5a7

    :pswitch_205  #0x2e
    nop

    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, p2, v7}, Lcom/android/framework/protobuf/SchemaUtil;->writeSFixed64List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5a7

    :pswitch_219  #0x2d
    nop

    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, p2, v7}, Lcom/android/framework/protobuf/SchemaUtil;->writeSFixed32List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5a7

    :pswitch_22d  #0x2c
    nop

    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, p2, v7}, Lcom/android/framework/protobuf/SchemaUtil;->writeEnumList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5a7

    :pswitch_241  #0x2b
    nop

    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, p2, v7}, Lcom/android/framework/protobuf/SchemaUtil;->writeUInt32List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5a7

    :pswitch_255  #0x2a
    nop

    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, p2, v7}, Lcom/android/framework/protobuf/SchemaUtil;->writeBoolList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5a7

    :pswitch_269  #0x29
    nop

    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, p2, v7}, Lcom/android/framework/protobuf/SchemaUtil;->writeFixed32List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5a7

    :pswitch_27d  #0x28
    nop

    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, p2, v7}, Lcom/android/framework/protobuf/SchemaUtil;->writeFixed64List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5a7

    :pswitch_291  #0x27
    nop

    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, p2, v7}, Lcom/android/framework/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5a7

    :pswitch_2a5  #0x26
    nop

    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, p2, v7}, Lcom/android/framework/protobuf/SchemaUtil;->writeUInt64List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5a7

    :pswitch_2b9  #0x25
    nop

    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, p2, v7}, Lcom/android/framework/protobuf/SchemaUtil;->writeInt64List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5a7

    :pswitch_2cd  #0x24
    nop

    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, p2, v7}, Lcom/android/framework/protobuf/SchemaUtil;->writeFloatList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5a7

    :pswitch_2e1  #0x23
    nop

    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, p2, v7}, Lcom/android/framework/protobuf/SchemaUtil;->writeDoubleList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5a7

    :pswitch_2f5  #0x22
    nop

    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v9

    invoke-static {p1, v9, v10}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v4, v7, p2, v8}, Lcom/android/framework/protobuf/SchemaUtil;->writeSInt64List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5a7

    :pswitch_309  #0x21
    nop

    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v9

    invoke-static {p1, v9, v10}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v4, v7, p2, v8}, Lcom/android/framework/protobuf/SchemaUtil;->writeSInt32List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5a7

    :pswitch_31d  #0x20
    nop

    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v9

    invoke-static {p1, v9, v10}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v4, v7, p2, v8}, Lcom/android/framework/protobuf/SchemaUtil;->writeSFixed64List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5a7

    :pswitch_331  #0x1f
    nop

    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v9

    invoke-static {p1, v9, v10}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v4, v7, p2, v8}, Lcom/android/framework/protobuf/SchemaUtil;->writeSFixed32List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5a7

    :pswitch_345  #0x1e
    nop

    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v9

    invoke-static {p1, v9, v10}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v4, v7, p2, v8}, Lcom/android/framework/protobuf/SchemaUtil;->writeEnumList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5a7

    :pswitch_359  #0x1d
    nop

    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v9

    invoke-static {p1, v9, v10}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v4, v7, p2, v8}, Lcom/android/framework/protobuf/SchemaUtil;->writeUInt32List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5a7

    :pswitch_36d  #0x1c
    nop

    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v4, v7, p2}, Lcom/android/framework/protobuf/SchemaUtil;->writeBytesList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;)V

    goto/16 :goto_5a7

    :pswitch_381  #0x1b
    nop

    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v8

    invoke-static {v4, v7, p2, v8}, Lcom/android/framework/protobuf/SchemaUtil;->writeMessageList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Lcom/android/framework/protobuf/Schema;)V

    goto/16 :goto_5a7

    :pswitch_399  #0x1a
    nop

    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v4, v7, p2}, Lcom/android/framework/protobuf/SchemaUtil;->writeStringList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;)V

    goto/16 :goto_5a7

    :pswitch_3ad  #0x19
    nop

    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v9

    invoke-static {p1, v9, v10}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v4, v7, p2, v8}, Lcom/android/framework/protobuf/SchemaUtil;->writeBoolList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5a7

    :pswitch_3c1  #0x18
    nop

    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v9

    invoke-static {p1, v9, v10}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v4, v7, p2, v8}, Lcom/android/framework/protobuf/SchemaUtil;->writeFixed32List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5a7

    :pswitch_3d5  #0x17
    nop

    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v9

    invoke-static {p1, v9, v10}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v4, v7, p2, v8}, Lcom/android/framework/protobuf/SchemaUtil;->writeFixed64List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5a7

    :pswitch_3e9  #0x16
    nop

    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v9

    invoke-static {p1, v9, v10}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v4, v7, p2, v8}, Lcom/android/framework/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5a7

    :pswitch_3fd  #0x15
    nop

    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v9

    invoke-static {p1, v9, v10}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v4, v7, p2, v8}, Lcom/android/framework/protobuf/SchemaUtil;->writeUInt64List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5a7

    :pswitch_411  #0x14
    nop

    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v9

    invoke-static {p1, v9, v10}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v4, v7, p2, v8}, Lcom/android/framework/protobuf/SchemaUtil;->writeInt64List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5a7

    :pswitch_425  #0x13
    nop

    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v9

    invoke-static {p1, v9, v10}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v4, v7, p2, v8}, Lcom/android/framework/protobuf/SchemaUtil;->writeFloatList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5a7

    :pswitch_439  #0x12
    nop

    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v9

    invoke-static {p1, v9, v10}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v4, v7, p2, v8}, Lcom/android/framework/protobuf/SchemaUtil;->writeDoubleList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5a7

    :pswitch_44d  #0x11
    invoke-direct {p0, p1, v3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_5a7

    nop

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v7

    invoke-interface {p2, v6, v4, v7}, Lcom/android/framework/protobuf/Writer;->writeGroup(ILjava/lang/Object;Lcom/android/framework/protobuf/Schema;)V

    goto/16 :goto_5a7

    :pswitch_465  #0x10
    invoke-direct {p0, p1, v3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_5a7

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/android/framework/protobuf/MessageSchema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v7

    invoke-interface {p2, v6, v7, v8}, Lcom/android/framework/protobuf/Writer;->writeSInt64(IJ)V

    goto/16 :goto_5a7

    :pswitch_478  #0xf
    invoke-direct {p0, p1, v3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_5a7

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/android/framework/protobuf/MessageSchema;->intAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v6, v4}, Lcom/android/framework/protobuf/Writer;->writeSInt32(II)V

    goto/16 :goto_5a7

    :pswitch_48b  #0xe
    invoke-direct {p0, p1, v3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_5a7

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/android/framework/protobuf/MessageSchema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v7

    invoke-interface {p2, v6, v7, v8}, Lcom/android/framework/protobuf/Writer;->writeSFixed64(IJ)V

    goto/16 :goto_5a7

    :pswitch_49e  #0xd
    invoke-direct {p0, p1, v3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_5a7

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/android/framework/protobuf/MessageSchema;->intAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v6, v4}, Lcom/android/framework/protobuf/Writer;->writeSFixed32(II)V

    goto/16 :goto_5a7

    :pswitch_4b1  #0xc
    invoke-direct {p0, p1, v3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_5a7

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/android/framework/protobuf/MessageSchema;->intAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v6, v4}, Lcom/android/framework/protobuf/Writer;->writeEnum(II)V

    goto/16 :goto_5a7

    :pswitch_4c4  #0xb
    invoke-direct {p0, p1, v3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_5a7

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/android/framework/protobuf/MessageSchema;->intAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v6, v4}, Lcom/android/framework/protobuf/Writer;->writeUInt32(II)V

    goto/16 :goto_5a7

    :pswitch_4d7  #0xa
    invoke-direct {p0, p1, v3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_5a7

    nop

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/framework/protobuf/ByteString;

    invoke-interface {p2, v6, v4}, Lcom/android/framework/protobuf/Writer;->writeBytes(ILcom/android/framework/protobuf/ByteString;)V

    goto/16 :goto_5a7

    :pswitch_4ed  #0x9
    invoke-direct {p0, p1, v3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_5a7

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v7

    invoke-interface {p2, v6, v4, v7}, Lcom/android/framework/protobuf/Writer;->writeMessage(ILjava/lang/Object;Lcom/android/framework/protobuf/Schema;)V

    goto/16 :goto_5a7

    :pswitch_504  #0x8
    invoke-direct {p0, p1, v3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_5a7

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v6, v4, p2}, Lcom/android/framework/protobuf/MessageSchema;->writeString(ILjava/lang/Object;Lcom/android/framework/protobuf/Writer;)V

    goto/16 :goto_5a7

    :pswitch_517  #0x7
    invoke-direct {p0, p1, v3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_5a7

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/android/framework/protobuf/MessageSchema;->booleanAt(Ljava/lang/Object;J)Z

    move-result v4

    invoke-interface {p2, v6, v4}, Lcom/android/framework/protobuf/Writer;->writeBool(IZ)V

    goto/16 :goto_5a7

    :pswitch_52a  #0x6
    invoke-direct {p0, p1, v3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_5a7

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/android/framework/protobuf/MessageSchema;->intAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v6, v4}, Lcom/android/framework/protobuf/Writer;->writeFixed32(II)V

    goto :goto_5a7

    :pswitch_53c  #0x5
    invoke-direct {p0, p1, v3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_5a7

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/android/framework/protobuf/MessageSchema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v7

    invoke-interface {p2, v6, v7, v8}, Lcom/android/framework/protobuf/Writer;->writeFixed64(IJ)V

    goto :goto_5a7

    :pswitch_54e  #0x4
    invoke-direct {p0, p1, v3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_5a7

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/android/framework/protobuf/MessageSchema;->intAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v6, v4}, Lcom/android/framework/protobuf/Writer;->writeInt32(II)V

    goto :goto_5a7

    :pswitch_560  #0x3
    invoke-direct {p0, p1, v3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_5a7

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/android/framework/protobuf/MessageSchema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v7

    invoke-interface {p2, v6, v7, v8}, Lcom/android/framework/protobuf/Writer;->writeUInt64(IJ)V

    goto :goto_5a7

    :pswitch_572  #0x2
    invoke-direct {p0, p1, v3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_5a7

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/android/framework/protobuf/MessageSchema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v7

    invoke-interface {p2, v6, v7, v8}, Lcom/android/framework/protobuf/Writer;->writeInt64(IJ)V

    goto :goto_5a7

    :pswitch_584  #0x1
    invoke-direct {p0, p1, v3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_5a7

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/android/framework/protobuf/MessageSchema;->floatAt(Ljava/lang/Object;J)F

    move-result v4

    invoke-interface {p2, v6, v4}, Lcom/android/framework/protobuf/Writer;->writeFloat(IF)V

    goto :goto_5a7

    :pswitch_596  #0x0
    invoke-direct {p0, p1, v3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_5a7

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/android/framework/protobuf/MessageSchema;->doubleAt(Ljava/lang/Object;J)D

    move-result-wide v7

    invoke-interface {p2, v6, v7, v8}, Lcom/android/framework/protobuf/Writer;->writeDouble(ID)V

    :cond_5a7
    :goto_5a7
    add-int/lit8 v3, v3, 0x3

    goto/16 :goto_21

    :cond_5ab
    :goto_5ab
    if-eqz v1, :cond_5c2

    iget-object v3, p0, Lcom/android/framework/protobuf/MessageSchema;->extensionSchema:Lcom/android/framework/protobuf/ExtensionSchema;

    invoke-virtual {v3, p2, v1}, Lcom/android/framework/protobuf/ExtensionSchema;->serializeExtension(Lcom/android/framework/protobuf/Writer;Ljava/util/Map$Entry;)V

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5bf

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    goto :goto_5c0

    :cond_5bf
    move-object v3, v4

    :goto_5c0
    move-object v1, v3

    goto :goto_5ab

    :cond_5c2
    iget-object v3, p0, Lcom/android/framework/protobuf/MessageSchema;->unknownFieldSchema:Lcom/android/framework/protobuf/UnknownFieldSchema;

    invoke-direct {p0, v3, p1, p2}, Lcom/android/framework/protobuf/MessageSchema;->writeUnknownInMessageTo(Lcom/android/framework/protobuf/UnknownFieldSchema;Ljava/lang/Object;Lcom/android/framework/protobuf/Writer;)V

    return-void

    :pswitch_data_5c8
    .packed-switch 0x0
        :pswitch_596  #00000000
        :pswitch_584  #00000001
        :pswitch_572  #00000002
        :pswitch_560  #00000003
        :pswitch_54e  #00000004
        :pswitch_53c  #00000005
        :pswitch_52a  #00000006
        :pswitch_517  #00000007
        :pswitch_504  #00000008
        :pswitch_4ed  #00000009
        :pswitch_4d7  #0000000a
        :pswitch_4c4  #0000000b
        :pswitch_4b1  #0000000c
        :pswitch_49e  #0000000d
        :pswitch_48b  #0000000e
        :pswitch_478  #0000000f
        :pswitch_465  #00000010
        :pswitch_44d  #00000011
        :pswitch_439  #00000012
        :pswitch_425  #00000013
        :pswitch_411  #00000014
        :pswitch_3fd  #00000015
        :pswitch_3e9  #00000016
        :pswitch_3d5  #00000017
        :pswitch_3c1  #00000018
        :pswitch_3ad  #00000019
        :pswitch_399  #0000001a
        :pswitch_381  #0000001b
        :pswitch_36d  #0000001c
        :pswitch_359  #0000001d
        :pswitch_345  #0000001e
        :pswitch_331  #0000001f
        :pswitch_31d  #00000020
        :pswitch_309  #00000021
        :pswitch_2f5  #00000022
        :pswitch_2e1  #00000023
        :pswitch_2cd  #00000024
        :pswitch_2b9  #00000025
        :pswitch_2a5  #00000026
        :pswitch_291  #00000027
        :pswitch_27d  #00000028
        :pswitch_269  #00000029
        :pswitch_255  #0000002a
        :pswitch_241  #0000002b
        :pswitch_22d  #0000002c
        :pswitch_219  #0000002d
        :pswitch_205  #0000002e
        :pswitch_1f1  #0000002f
        :pswitch_1dd  #00000030
        :pswitch_1c5  #00000031
        :pswitch_1b8  #00000032
        :pswitch_1a5  #00000033
        :pswitch_192  #00000034
        :pswitch_17f  #00000035
        :pswitch_16c  #00000036
        :pswitch_159  #00000037
        :pswitch_146  #00000038
        :pswitch_133  #00000039
        :pswitch_120  #0000003a
        :pswitch_10d  #0000003b
        :pswitch_f6  #0000003c
        :pswitch_e0  #0000003d
        :pswitch_cd  #0000003e
        :pswitch_ba  #0000003f
        :pswitch_a7  #00000040
        :pswitch_94  #00000041
        :pswitch_81  #00000042
        :pswitch_6e  #00000043
        :pswitch_56  #00000044
    .end packed-switch
.end method

.method private writeFieldsInDescendingOrder(Ljava/lang/Object;Lcom/android/framework/protobuf/Writer;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/android/framework/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/framework/protobuf/MessageSchema;->unknownFieldSchema:Lcom/android/framework/protobuf/UnknownFieldSchema;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/framework/protobuf/MessageSchema;->writeUnknownInMessageTo(Lcom/android/framework/protobuf/UnknownFieldSchema;Ljava/lang/Object;Lcom/android/framework/protobuf/Writer;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/android/framework/protobuf/MessageSchema;->hasExtensions:Z

    if-eqz v2, :cond_22

    iget-object v2, p0, Lcom/android/framework/protobuf/MessageSchema;->extensionSchema:Lcom/android/framework/protobuf/ExtensionSchema;

    invoke-virtual {v2, p1}, Lcom/android/framework/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Lcom/android/framework/protobuf/FieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/framework/protobuf/FieldSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_22

    invoke-virtual {v2}, Lcom/android/framework/protobuf/FieldSet;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Ljava/util/Map$Entry;

    :cond_22
    iget-object v2, p0, Lcom/android/framework/protobuf/MessageSchema;->buffer:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x3

    :goto_27
    const/4 v3, 0x0

    if-ltz v2, :cond_5b1

    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v4

    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    :goto_32
    if-eqz v1, :cond_51

    iget-object v6, p0, Lcom/android/framework/protobuf/MessageSchema;->extensionSchema:Lcom/android/framework/protobuf/ExtensionSchema;

    invoke-virtual {v6, v1}, Lcom/android/framework/protobuf/ExtensionSchema;->extensionNumber(Ljava/util/Map$Entry;)I

    move-result v6

    if-le v6, v5, :cond_51

    iget-object v6, p0, Lcom/android/framework/protobuf/MessageSchema;->extensionSchema:Lcom/android/framework/protobuf/ExtensionSchema;

    invoke-virtual {v6, p2, v1}, Lcom/android/framework/protobuf/ExtensionSchema;->serializeExtension(Lcom/android/framework/protobuf/Writer;Ljava/util/Map$Entry;)V

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    goto :goto_4f

    :cond_4e
    move-object v6, v3

    :goto_4f
    move-object v1, v6

    goto :goto_32

    :cond_51
    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->type(I)I

    move-result v3

    const/4 v6, 0x1

    const/4 v7, 0x0

    packed-switch v3, :pswitch_data_5ca

    goto/16 :goto_5ad

    :pswitch_5c  #0x44
    invoke-direct {p0, p1, v5, v2}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_5ad

    nop

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v6

    invoke-interface {p2, v5, v3, v6}, Lcom/android/framework/protobuf/Writer;->writeGroup(ILjava/lang/Object;Lcom/android/framework/protobuf/Schema;)V

    goto/16 :goto_5ad

    :pswitch_74  #0x43
    invoke-direct {p0, p1, v5, v2}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_5ad

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/android/framework/protobuf/Writer;->writeSInt64(IJ)V

    goto/16 :goto_5ad

    :pswitch_87  #0x42
    invoke-direct {p0, p1, v5, v2}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_5ad

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v3

    invoke-interface {p2, v5, v3}, Lcom/android/framework/protobuf/Writer;->writeSInt32(II)V

    goto/16 :goto_5ad

    :pswitch_9a  #0x41
    invoke-direct {p0, p1, v5, v2}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_5ad

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/android/framework/protobuf/Writer;->writeSFixed64(IJ)V

    goto/16 :goto_5ad

    :pswitch_ad  #0x40
    invoke-direct {p0, p1, v5, v2}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_5ad

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v3

    invoke-interface {p2, v5, v3}, Lcom/android/framework/protobuf/Writer;->writeSFixed32(II)V

    goto/16 :goto_5ad

    :pswitch_c0  #0x3f
    invoke-direct {p0, p1, v5, v2}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_5ad

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v3

    invoke-interface {p2, v5, v3}, Lcom/android/framework/protobuf/Writer;->writeEnum(II)V

    goto/16 :goto_5ad

    :pswitch_d3  #0x3e
    invoke-direct {p0, p1, v5, v2}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_5ad

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v3

    invoke-interface {p2, v5, v3}, Lcom/android/framework/protobuf/Writer;->writeUInt32(II)V

    goto/16 :goto_5ad

    :pswitch_e6  #0x3d
    invoke-direct {p0, p1, v5, v2}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_5ad

    nop

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/framework/protobuf/ByteString;

    invoke-interface {p2, v5, v3}, Lcom/android/framework/protobuf/Writer;->writeBytes(ILcom/android/framework/protobuf/ByteString;)V

    goto/16 :goto_5ad

    :pswitch_fc  #0x3c
    invoke-direct {p0, p1, v5, v2}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_5ad

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v6

    invoke-interface {p2, v5, v3, v6}, Lcom/android/framework/protobuf/Writer;->writeMessage(ILjava/lang/Object;Lcom/android/framework/protobuf/Schema;)V

    goto/16 :goto_5ad

    :pswitch_113  #0x3b
    invoke-direct {p0, p1, v5, v2}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_5ad

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v5, v3, p2}, Lcom/android/framework/protobuf/MessageSchema;->writeString(ILjava/lang/Object;Lcom/android/framework/protobuf/Writer;)V

    goto/16 :goto_5ad

    :pswitch_126  #0x3a
    invoke-direct {p0, p1, v5, v2}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_5ad

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/MessageSchema;->oneofBooleanAt(Ljava/lang/Object;J)Z

    move-result v3

    invoke-interface {p2, v5, v3}, Lcom/android/framework/protobuf/Writer;->writeBool(IZ)V

    goto/16 :goto_5ad

    :pswitch_139  #0x39
    invoke-direct {p0, p1, v5, v2}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_5ad

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v3

    invoke-interface {p2, v5, v3}, Lcom/android/framework/protobuf/Writer;->writeFixed32(II)V

    goto/16 :goto_5ad

    :pswitch_14c  #0x38
    invoke-direct {p0, p1, v5, v2}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_5ad

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/android/framework/protobuf/Writer;->writeFixed64(IJ)V

    goto/16 :goto_5ad

    :pswitch_15f  #0x37
    invoke-direct {p0, p1, v5, v2}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_5ad

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v3

    invoke-interface {p2, v5, v3}, Lcom/android/framework/protobuf/Writer;->writeInt32(II)V

    goto/16 :goto_5ad

    :pswitch_172  #0x36
    invoke-direct {p0, p1, v5, v2}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_5ad

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/android/framework/protobuf/Writer;->writeUInt64(IJ)V

    goto/16 :goto_5ad

    :pswitch_185  #0x35
    invoke-direct {p0, p1, v5, v2}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_5ad

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/android/framework/protobuf/Writer;->writeInt64(IJ)V

    goto/16 :goto_5ad

    :pswitch_198  #0x34
    invoke-direct {p0, p1, v5, v2}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_5ad

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/MessageSchema;->oneofFloatAt(Ljava/lang/Object;J)F

    move-result v3

    invoke-interface {p2, v5, v3}, Lcom/android/framework/protobuf/Writer;->writeFloat(IF)V

    goto/16 :goto_5ad

    :pswitch_1ab  #0x33
    invoke-direct {p0, p1, v5, v2}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_5ad

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/MessageSchema;->oneofDoubleAt(Ljava/lang/Object;J)D

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/android/framework/protobuf/Writer;->writeDouble(ID)V

    goto/16 :goto_5ad

    :pswitch_1be  #0x32
    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, p2, v5, v3, v2}, Lcom/android/framework/protobuf/MessageSchema;->writeMapHelper(Lcom/android/framework/protobuf/Writer;ILjava/lang/Object;I)V

    goto/16 :goto_5ad

    :pswitch_1cb  #0x31
    nop

    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v7

    invoke-static {v3, v6, p2, v7}, Lcom/android/framework/protobuf/SchemaUtil;->writeGroupList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Lcom/android/framework/protobuf/Schema;)V

    goto/16 :goto_5ad

    :pswitch_1e3  #0x30
    nop

    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v3, v7, p2, v6}, Lcom/android/framework/protobuf/SchemaUtil;->writeSInt64List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5ad

    :pswitch_1f7  #0x2f
    nop

    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v3, v7, p2, v6}, Lcom/android/framework/protobuf/SchemaUtil;->writeSInt32List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5ad

    :pswitch_20b  #0x2e
    nop

    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v3, v7, p2, v6}, Lcom/android/framework/protobuf/SchemaUtil;->writeSFixed64List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5ad

    :pswitch_21f  #0x2d
    nop

    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v3, v7, p2, v6}, Lcom/android/framework/protobuf/SchemaUtil;->writeSFixed32List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5ad

    :pswitch_233  #0x2c
    nop

    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v3, v7, p2, v6}, Lcom/android/framework/protobuf/SchemaUtil;->writeEnumList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5ad

    :pswitch_247  #0x2b
    nop

    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v3, v7, p2, v6}, Lcom/android/framework/protobuf/SchemaUtil;->writeUInt32List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5ad

    :pswitch_25b  #0x2a
    nop

    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v3, v7, p2, v6}, Lcom/android/framework/protobuf/SchemaUtil;->writeBoolList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5ad

    :pswitch_26f  #0x29
    nop

    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v3, v7, p2, v6}, Lcom/android/framework/protobuf/SchemaUtil;->writeFixed32List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5ad

    :pswitch_283  #0x28
    nop

    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v3, v7, p2, v6}, Lcom/android/framework/protobuf/SchemaUtil;->writeFixed64List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5ad

    :pswitch_297  #0x27
    nop

    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v3, v7, p2, v6}, Lcom/android/framework/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5ad

    :pswitch_2ab  #0x26
    nop

    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v3, v7, p2, v6}, Lcom/android/framework/protobuf/SchemaUtil;->writeUInt64List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5ad

    :pswitch_2bf  #0x25
    nop

    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v3, v7, p2, v6}, Lcom/android/framework/protobuf/SchemaUtil;->writeInt64List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5ad

    :pswitch_2d3  #0x24
    nop

    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v3, v7, p2, v6}, Lcom/android/framework/protobuf/SchemaUtil;->writeFloatList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5ad

    :pswitch_2e7  #0x23
    nop

    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v3, v7, p2, v6}, Lcom/android/framework/protobuf/SchemaUtil;->writeDoubleList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5ad

    :pswitch_2fb  #0x22
    nop

    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v3, v6, p2, v7}, Lcom/android/framework/protobuf/SchemaUtil;->writeSInt64List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5ad

    :pswitch_30f  #0x21
    nop

    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v3, v6, p2, v7}, Lcom/android/framework/protobuf/SchemaUtil;->writeSInt32List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5ad

    :pswitch_323  #0x20
    nop

    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v3, v6, p2, v7}, Lcom/android/framework/protobuf/SchemaUtil;->writeSFixed64List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5ad

    :pswitch_337  #0x1f
    nop

    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v3, v6, p2, v7}, Lcom/android/framework/protobuf/SchemaUtil;->writeSFixed32List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5ad

    :pswitch_34b  #0x1e
    nop

    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v3, v6, p2, v7}, Lcom/android/framework/protobuf/SchemaUtil;->writeEnumList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5ad

    :pswitch_35f  #0x1d
    nop

    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v3, v6, p2, v7}, Lcom/android/framework/protobuf/SchemaUtil;->writeUInt32List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5ad

    :pswitch_373  #0x1c
    nop

    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v3, v6, p2}, Lcom/android/framework/protobuf/SchemaUtil;->writeBytesList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;)V

    goto/16 :goto_5ad

    :pswitch_387  #0x1b
    nop

    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v7

    invoke-static {v3, v6, p2, v7}, Lcom/android/framework/protobuf/SchemaUtil;->writeMessageList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Lcom/android/framework/protobuf/Schema;)V

    goto/16 :goto_5ad

    :pswitch_39f  #0x1a
    nop

    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v3, v6, p2}, Lcom/android/framework/protobuf/SchemaUtil;->writeStringList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;)V

    goto/16 :goto_5ad

    :pswitch_3b3  #0x19
    nop

    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v3, v6, p2, v7}, Lcom/android/framework/protobuf/SchemaUtil;->writeBoolList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5ad

    :pswitch_3c7  #0x18
    nop

    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v3, v6, p2, v7}, Lcom/android/framework/protobuf/SchemaUtil;->writeFixed32List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5ad

    :pswitch_3db  #0x17
    nop

    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v3, v6, p2, v7}, Lcom/android/framework/protobuf/SchemaUtil;->writeFixed64List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5ad

    :pswitch_3ef  #0x16
    nop

    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v3, v6, p2, v7}, Lcom/android/framework/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5ad

    :pswitch_403  #0x15
    nop

    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v3, v6, p2, v7}, Lcom/android/framework/protobuf/SchemaUtil;->writeUInt64List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5ad

    :pswitch_417  #0x14
    nop

    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v3, v6, p2, v7}, Lcom/android/framework/protobuf/SchemaUtil;->writeInt64List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5ad

    :pswitch_42b  #0x13
    nop

    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v3, v6, p2, v7}, Lcom/android/framework/protobuf/SchemaUtil;->writeFloatList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5ad

    :pswitch_43f  #0x12
    nop

    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v3, v6, p2, v7}, Lcom/android/framework/protobuf/SchemaUtil;->writeDoubleList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5ad

    :pswitch_453  #0x11
    invoke-direct {p0, p1, v2}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_5ad

    nop

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v6

    invoke-interface {p2, v5, v3, v6}, Lcom/android/framework/protobuf/Writer;->writeGroup(ILjava/lang/Object;Lcom/android/framework/protobuf/Schema;)V

    goto/16 :goto_5ad

    :pswitch_46b  #0x10
    invoke-direct {p0, p1, v2}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_5ad

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/MessageSchema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/android/framework/protobuf/Writer;->writeSInt64(IJ)V

    goto/16 :goto_5ad

    :pswitch_47e  #0xf
    invoke-direct {p0, p1, v2}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_5ad

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/MessageSchema;->intAt(Ljava/lang/Object;J)I

    move-result v3

    invoke-interface {p2, v5, v3}, Lcom/android/framework/protobuf/Writer;->writeSInt32(II)V

    goto/16 :goto_5ad

    :pswitch_491  #0xe
    invoke-direct {p0, p1, v2}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_5ad

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/MessageSchema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/android/framework/protobuf/Writer;->writeSFixed64(IJ)V

    goto/16 :goto_5ad

    :pswitch_4a4  #0xd
    invoke-direct {p0, p1, v2}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_5ad

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/MessageSchema;->intAt(Ljava/lang/Object;J)I

    move-result v3

    invoke-interface {p2, v5, v3}, Lcom/android/framework/protobuf/Writer;->writeSFixed32(II)V

    goto/16 :goto_5ad

    :pswitch_4b7  #0xc
    invoke-direct {p0, p1, v2}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_5ad

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/MessageSchema;->intAt(Ljava/lang/Object;J)I

    move-result v3

    invoke-interface {p2, v5, v3}, Lcom/android/framework/protobuf/Writer;->writeEnum(II)V

    goto/16 :goto_5ad

    :pswitch_4ca  #0xb
    invoke-direct {p0, p1, v2}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_5ad

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/MessageSchema;->intAt(Ljava/lang/Object;J)I

    move-result v3

    invoke-interface {p2, v5, v3}, Lcom/android/framework/protobuf/Writer;->writeUInt32(II)V

    goto/16 :goto_5ad

    :pswitch_4dd  #0xa
    invoke-direct {p0, p1, v2}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_5ad

    nop

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/framework/protobuf/ByteString;

    invoke-interface {p2, v5, v3}, Lcom/android/framework/protobuf/Writer;->writeBytes(ILcom/android/framework/protobuf/ByteString;)V

    goto/16 :goto_5ad

    :pswitch_4f3  #0x9
    invoke-direct {p0, p1, v2}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_5ad

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v6

    invoke-interface {p2, v5, v3, v6}, Lcom/android/framework/protobuf/Writer;->writeMessage(ILjava/lang/Object;Lcom/android/framework/protobuf/Schema;)V

    goto/16 :goto_5ad

    :pswitch_50a  #0x8
    invoke-direct {p0, p1, v2}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_5ad

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v5, v3, p2}, Lcom/android/framework/protobuf/MessageSchema;->writeString(ILjava/lang/Object;Lcom/android/framework/protobuf/Writer;)V

    goto/16 :goto_5ad

    :pswitch_51d  #0x7
    invoke-direct {p0, p1, v2}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_5ad

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/MessageSchema;->booleanAt(Ljava/lang/Object;J)Z

    move-result v3

    invoke-interface {p2, v5, v3}, Lcom/android/framework/protobuf/Writer;->writeBool(IZ)V

    goto/16 :goto_5ad

    :pswitch_530  #0x6
    invoke-direct {p0, p1, v2}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_5ad

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/MessageSchema;->intAt(Ljava/lang/Object;J)I

    move-result v3

    invoke-interface {p2, v5, v3}, Lcom/android/framework/protobuf/Writer;->writeFixed32(II)V

    goto :goto_5ad

    :pswitch_542  #0x5
    invoke-direct {p0, p1, v2}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_5ad

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/MessageSchema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/android/framework/protobuf/Writer;->writeFixed64(IJ)V

    goto :goto_5ad

    :pswitch_554  #0x4
    invoke-direct {p0, p1, v2}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_5ad

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/MessageSchema;->intAt(Ljava/lang/Object;J)I

    move-result v3

    invoke-interface {p2, v5, v3}, Lcom/android/framework/protobuf/Writer;->writeInt32(II)V

    goto :goto_5ad

    :pswitch_566  #0x3
    invoke-direct {p0, p1, v2}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_5ad

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/MessageSchema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/android/framework/protobuf/Writer;->writeUInt64(IJ)V

    goto :goto_5ad

    :pswitch_578  #0x2
    invoke-direct {p0, p1, v2}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_5ad

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/MessageSchema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/android/framework/protobuf/Writer;->writeInt64(IJ)V

    goto :goto_5ad

    :pswitch_58a  #0x1
    invoke-direct {p0, p1, v2}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_5ad

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/MessageSchema;->floatAt(Ljava/lang/Object;J)F

    move-result v3

    invoke-interface {p2, v5, v3}, Lcom/android/framework/protobuf/Writer;->writeFloat(IF)V

    goto :goto_5ad

    :pswitch_59c  #0x0
    invoke-direct {p0, p1, v2}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_5ad

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/MessageSchema;->doubleAt(Ljava/lang/Object;J)D

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/android/framework/protobuf/Writer;->writeDouble(ID)V

    :cond_5ad
    :goto_5ad
    add-int/lit8 v2, v2, -0x3

    goto/16 :goto_27

    :cond_5b1
    :goto_5b1
    if-eqz v1, :cond_5c8

    iget-object v2, p0, Lcom/android/framework/protobuf/MessageSchema;->extensionSchema:Lcom/android/framework/protobuf/ExtensionSchema;

    invoke-virtual {v2, p2, v1}, Lcom/android/framework/protobuf/ExtensionSchema;->serializeExtension(Lcom/android/framework/protobuf/Writer;Ljava/util/Map$Entry;)V

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5c5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    goto :goto_5c6

    :cond_5c5
    move-object v2, v3

    :goto_5c6
    move-object v1, v2

    goto :goto_5b1

    :cond_5c8
    return-void

    nop

    :pswitch_data_5ca
    .packed-switch 0x0
        :pswitch_59c  #00000000
        :pswitch_58a  #00000001
        :pswitch_578  #00000002
        :pswitch_566  #00000003
        :pswitch_554  #00000004
        :pswitch_542  #00000005
        :pswitch_530  #00000006
        :pswitch_51d  #00000007
        :pswitch_50a  #00000008
        :pswitch_4f3  #00000009
        :pswitch_4dd  #0000000a
        :pswitch_4ca  #0000000b
        :pswitch_4b7  #0000000c
        :pswitch_4a4  #0000000d
        :pswitch_491  #0000000e
        :pswitch_47e  #0000000f
        :pswitch_46b  #00000010
        :pswitch_453  #00000011
        :pswitch_43f  #00000012
        :pswitch_42b  #00000013
        :pswitch_417  #00000014
        :pswitch_403  #00000015
        :pswitch_3ef  #00000016
        :pswitch_3db  #00000017
        :pswitch_3c7  #00000018
        :pswitch_3b3  #00000019
        :pswitch_39f  #0000001a
        :pswitch_387  #0000001b
        :pswitch_373  #0000001c
        :pswitch_35f  #0000001d
        :pswitch_34b  #0000001e
        :pswitch_337  #0000001f
        :pswitch_323  #00000020
        :pswitch_30f  #00000021
        :pswitch_2fb  #00000022
        :pswitch_2e7  #00000023
        :pswitch_2d3  #00000024
        :pswitch_2bf  #00000025
        :pswitch_2ab  #00000026
        :pswitch_297  #00000027
        :pswitch_283  #00000028
        :pswitch_26f  #00000029
        :pswitch_25b  #0000002a
        :pswitch_247  #0000002b
        :pswitch_233  #0000002c
        :pswitch_21f  #0000002d
        :pswitch_20b  #0000002e
        :pswitch_1f7  #0000002f
        :pswitch_1e3  #00000030
        :pswitch_1cb  #00000031
        :pswitch_1be  #00000032
        :pswitch_1ab  #00000033
        :pswitch_198  #00000034
        :pswitch_185  #00000035
        :pswitch_172  #00000036
        :pswitch_15f  #00000037
        :pswitch_14c  #00000038
        :pswitch_139  #00000039
        :pswitch_126  #0000003a
        :pswitch_113  #0000003b
        :pswitch_fc  #0000003c
        :pswitch_e6  #0000003d
        :pswitch_d3  #0000003e
        :pswitch_c0  #0000003f
        :pswitch_ad  #00000040
        :pswitch_9a  #00000041
        :pswitch_87  #00000042
        :pswitch_74  #00000043
        :pswitch_5c  #00000044
    .end packed-switch
.end method

.method private writeMapHelper(Lcom/android/framework/protobuf/Writer;ILjava/lang/Object;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/framework/protobuf/Writer;",
            "I",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_15

    iget-object v0, p0, Lcom/android/framework/protobuf/MessageSchema;->mapFieldSchema:Lcom/android/framework/protobuf/MapFieldSchema;

    invoke-direct {p0, p4}, Lcom/android/framework/protobuf/MessageSchema;->getMapFieldDefaultEntry(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/framework/protobuf/MapFieldSchema;->forMapMetadata(Ljava/lang/Object;)Lcom/android/framework/protobuf/MapEntryLite$Metadata;

    move-result-object v0

    iget-object v1, p0, Lcom/android/framework/protobuf/MessageSchema;->mapFieldSchema:Lcom/android/framework/protobuf/MapFieldSchema;

    invoke-interface {v1, p3}, Lcom/android/framework/protobuf/MapFieldSchema;->forMapData(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {p1, p2, v0, v1}, Lcom/android/framework/protobuf/Writer;->writeMap(ILcom/android/framework/protobuf/MapEntryLite$Metadata;Ljava/util/Map;)V

    :cond_15
    return-void
.end method

.method private writeString(ILjava/lang/Object;Lcom/android/framework/protobuf/Writer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_b

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-interface {p3, p1, v0}, Lcom/android/framework/protobuf/Writer;->writeString(ILjava/lang/String;)V

    goto :goto_11

    :cond_b
    move-object v0, p2

    check-cast v0, Lcom/android/framework/protobuf/ByteString;

    invoke-interface {p3, p1, v0}, Lcom/android/framework/protobuf/Writer;->writeBytes(ILcom/android/framework/protobuf/ByteString;)V

    :goto_11
    return-void
.end method

.method private writeUnknownInMessageTo(Lcom/android/framework/protobuf/UnknownFieldSchema;Ljava/lang/Object;Lcom/android/framework/protobuf/Writer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/framework/protobuf/UnknownFieldSchema<",
            "TUT;TUB;>;TT;",
            "Lcom/android/framework/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1, p2}, Lcom/android/framework/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0, p3}, Lcom/android/framework/protobuf/UnknownFieldSchema;->writeTo(Ljava/lang/Object;Lcom/android/framework/protobuf/Writer;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/framework/protobuf/MessageSchema;->buffer:[I

    array-length v0, v0

    const/4 v1, 0x0

    :goto_4
    const/4 v2, 0x0

    if-ge v1, v0, :cond_11

    invoke-direct {p0, p1, p2, v1}, Lcom/android/framework/protobuf/MessageSchema;->equals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-nez v3, :cond_e

    return v2

    :cond_e
    add-int/lit8 v1, v1, 0x3

    goto :goto_4

    :cond_11
    iget-object v1, p0, Lcom/android/framework/protobuf/MessageSchema;->unknownFieldSchema:Lcom/android/framework/protobuf/UnknownFieldSchema;

    invoke-virtual {v1, p1}, Lcom/android/framework/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v3, p0, Lcom/android/framework/protobuf/MessageSchema;->unknownFieldSchema:Lcom/android/framework/protobuf/UnknownFieldSchema;

    invoke-virtual {v3, p2}, Lcom/android/framework/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_24

    return v2

    :cond_24
    iget-boolean v2, p0, Lcom/android/framework/protobuf/MessageSchema;->hasExtensions:Z

    if-eqz v2, :cond_39

    iget-object v2, p0, Lcom/android/framework/protobuf/MessageSchema;->extensionSchema:Lcom/android/framework/protobuf/ExtensionSchema;

    invoke-virtual {v2, p1}, Lcom/android/framework/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Lcom/android/framework/protobuf/FieldSet;

    move-result-object v2

    iget-object v4, p0, Lcom/android/framework/protobuf/MessageSchema;->extensionSchema:Lcom/android/framework/protobuf/ExtensionSchema;

    invoke-virtual {v4, p2}, Lcom/android/framework/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Lcom/android/framework/protobuf/FieldSet;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/framework/protobuf/FieldSet;->equals(Ljava/lang/Object;)Z

    move-result v5

    return v5

    :cond_39
    const/4 v2, 0x1

    return v2
.end method

.method getSchemaSize()I
    .registers 2

    iget-object v0, p0, Lcom/android/framework/protobuf/MessageSchema;->buffer:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public getSerializedSize(Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/framework/protobuf/MessageSchema;->proto3:Z

    if-eqz v0, :cond_9

    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/MessageSchema;->getSerializedSizeProto3(Ljava/lang/Object;)I

    move-result v0

    goto :goto_d

    :cond_9
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/MessageSchema;->getSerializedSizeProto2(Ljava/lang/Object;)I

    move-result v0

    :goto_d
    return v0
.end method

.method public hashCode(Ljava/lang/Object;)I
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/framework/protobuf/MessageSchema;->buffer:[I

    array-length v1, v1

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v1, :cond_27b

    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v3

    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    invoke-static {v3}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v5

    invoke-static {v3}, Lcom/android/framework/protobuf/MessageSchema;->type(I)I

    move-result v7

    packed-switch v7, :pswitch_data_29c

    goto/16 :goto_277

    :pswitch_1c  #0x44
    invoke-direct {p0, p1, v4, v2}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_277

    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    mul-int/lit8 v8, v0, 0x35

    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v9

    add-int/2addr v8, v9

    move v0, v8

    goto/16 :goto_277

    :pswitch_30  #0x43
    invoke-direct {p0, p1, v4, v2}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_277

    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/android/framework/protobuf/Internal;->hashLong(J)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    goto/16 :goto_277

    :pswitch_44  #0x42
    invoke-direct {p0, p1, v4, v2}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_277

    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    goto/16 :goto_277

    :pswitch_54  #0x41
    invoke-direct {p0, p1, v4, v2}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_277

    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/android/framework/protobuf/Internal;->hashLong(J)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    goto/16 :goto_277

    :pswitch_68  #0x40
    invoke-direct {p0, p1, v4, v2}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_277

    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    goto/16 :goto_277

    :pswitch_78  #0x3f
    invoke-direct {p0, p1, v4, v2}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_277

    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    goto/16 :goto_277

    :pswitch_88  #0x3e
    invoke-direct {p0, p1, v4, v2}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_277

    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    goto/16 :goto_277

    :pswitch_98  #0x3d
    invoke-direct {p0, p1, v4, v2}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_277

    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    goto/16 :goto_277

    :pswitch_ac  #0x3c
    invoke-direct {p0, p1, v4, v2}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_277

    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    mul-int/lit8 v8, v0, 0x35

    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v9

    add-int/2addr v8, v9

    move v0, v8

    goto/16 :goto_277

    :pswitch_c0  #0x3b
    invoke-direct {p0, p1, v4, v2}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_277

    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    goto/16 :goto_277

    :pswitch_d6  #0x3a
    invoke-direct {p0, p1, v4, v2}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_277

    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/MessageSchema;->oneofBooleanAt(Ljava/lang/Object;J)Z

    move-result v8

    invoke-static {v8}, Lcom/android/framework/protobuf/Internal;->hashBoolean(Z)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    goto/16 :goto_277

    :pswitch_ea  #0x39
    invoke-direct {p0, p1, v4, v2}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_277

    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    goto/16 :goto_277

    :pswitch_fa  #0x38
    invoke-direct {p0, p1, v4, v2}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_277

    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/android/framework/protobuf/Internal;->hashLong(J)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    goto/16 :goto_277

    :pswitch_10e  #0x37
    invoke-direct {p0, p1, v4, v2}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_277

    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    goto/16 :goto_277

    :pswitch_11e  #0x36
    invoke-direct {p0, p1, v4, v2}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_277

    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/android/framework/protobuf/Internal;->hashLong(J)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    goto/16 :goto_277

    :pswitch_132  #0x35
    invoke-direct {p0, p1, v4, v2}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_277

    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/android/framework/protobuf/Internal;->hashLong(J)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    goto/16 :goto_277

    :pswitch_146  #0x34
    invoke-direct {p0, p1, v4, v2}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_277

    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/MessageSchema;->oneofFloatAt(Ljava/lang/Object;J)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    goto/16 :goto_277

    :pswitch_15a  #0x33
    invoke-direct {p0, p1, v4, v2}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_277

    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/MessageSchema;->oneofDoubleAt(Ljava/lang/Object;J)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/android/framework/protobuf/Internal;->hashLong(J)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    goto/16 :goto_277

    :pswitch_172  #0x32
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    goto/16 :goto_277

    :pswitch_180  #0x12, 0x13, 0x14, 0x15, 0x16, 0x17, 0x18, 0x19, 0x1a, 0x1b, 0x1c, 0x1d, 0x1e, 0x1f, 0x20, 0x21, 0x22, 0x23, 0x24, 0x25, 0x26, 0x27, 0x28, 0x29, 0x2a, 0x2b, 0x2c, 0x2d, 0x2e, 0x2f, 0x30, 0x31
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    goto/16 :goto_277

    :pswitch_18e  #0x11
    const/16 v7, 0x25

    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_19a

    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v7

    :cond_19a
    mul-int/lit8 v9, v0, 0x35

    add-int/2addr v9, v7

    move v0, v9

    goto/16 :goto_277

    :pswitch_1a0  #0x10
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/android/framework/protobuf/Internal;->hashLong(J)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    goto/16 :goto_277

    :pswitch_1ae  #0xf
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    goto/16 :goto_277

    :pswitch_1b8  #0xe
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/android/framework/protobuf/Internal;->hashLong(J)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    goto/16 :goto_277

    :pswitch_1c6  #0xd
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    goto/16 :goto_277

    :pswitch_1d0  #0xc
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    goto/16 :goto_277

    :pswitch_1da  #0xb
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    goto/16 :goto_277

    :pswitch_1e4  #0xa
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    goto/16 :goto_277

    :pswitch_1f2  #0x9
    const/16 v7, 0x25

    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_1fe

    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v7

    :cond_1fe
    mul-int/lit8 v9, v0, 0x35

    add-int/2addr v9, v7

    move v0, v9

    goto/16 :goto_277

    :pswitch_204  #0x8
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    goto/16 :goto_277

    :pswitch_214  #0x7
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/UnsafeUtil;->getBoolean(Ljava/lang/Object;J)Z

    move-result v8

    invoke-static {v8}, Lcom/android/framework/protobuf/Internal;->hashBoolean(Z)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    goto :goto_277

    :pswitch_221  #0x6
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    goto :goto_277

    :pswitch_22a  #0x5
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/android/framework/protobuf/Internal;->hashLong(J)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    goto :goto_277

    :pswitch_237  #0x4
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    goto :goto_277

    :pswitch_240  #0x3
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/android/framework/protobuf/Internal;->hashLong(J)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    goto :goto_277

    :pswitch_24d  #0x2
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/android/framework/protobuf/Internal;->hashLong(J)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    goto :goto_277

    :pswitch_25a  #0x1
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/UnsafeUtil;->getFloat(Ljava/lang/Object;J)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    goto :goto_277

    :pswitch_267  #0x0
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/UnsafeUtil;->getDouble(Ljava/lang/Object;J)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/android/framework/protobuf/Internal;->hashLong(J)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    :cond_277
    :goto_277
    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_5

    :cond_27b
    mul-int/lit8 v2, v0, 0x35

    iget-object v3, p0, Lcom/android/framework/protobuf/MessageSchema;->unknownFieldSchema:Lcom/android/framework/protobuf/UnknownFieldSchema;

    invoke-virtual {v3, p1}, Lcom/android/framework/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    iget-boolean v0, p0, Lcom/android/framework/protobuf/MessageSchema;->hasExtensions:Z

    if-eqz v0, :cond_29a

    mul-int/lit8 v0, v2, 0x35

    iget-object v3, p0, Lcom/android/framework/protobuf/MessageSchema;->extensionSchema:Lcom/android/framework/protobuf/ExtensionSchema;

    invoke-virtual {v3, p1}, Lcom/android/framework/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Lcom/android/framework/protobuf/FieldSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/framework/protobuf/FieldSet;->hashCode()I

    move-result v3

    add-int v2, v0, v3

    :cond_29a
    return v2

    nop

    :pswitch_data_29c
    .packed-switch 0x0
        :pswitch_267  #00000000
        :pswitch_25a  #00000001
        :pswitch_24d  #00000002
        :pswitch_240  #00000003
        :pswitch_237  #00000004
        :pswitch_22a  #00000005
        :pswitch_221  #00000006
        :pswitch_214  #00000007
        :pswitch_204  #00000008
        :pswitch_1f2  #00000009
        :pswitch_1e4  #0000000a
        :pswitch_1da  #0000000b
        :pswitch_1d0  #0000000c
        :pswitch_1c6  #0000000d
        :pswitch_1b8  #0000000e
        :pswitch_1ae  #0000000f
        :pswitch_1a0  #00000010
        :pswitch_18e  #00000011
        :pswitch_180  #00000012
        :pswitch_180  #00000013
        :pswitch_180  #00000014
        :pswitch_180  #00000015
        :pswitch_180  #00000016
        :pswitch_180  #00000017
        :pswitch_180  #00000018
        :pswitch_180  #00000019
        :pswitch_180  #0000001a
        :pswitch_180  #0000001b
        :pswitch_180  #0000001c
        :pswitch_180  #0000001d
        :pswitch_180  #0000001e
        :pswitch_180  #0000001f
        :pswitch_180  #00000020
        :pswitch_180  #00000021
        :pswitch_180  #00000022
        :pswitch_180  #00000023
        :pswitch_180  #00000024
        :pswitch_180  #00000025
        :pswitch_180  #00000026
        :pswitch_180  #00000027
        :pswitch_180  #00000028
        :pswitch_180  #00000029
        :pswitch_180  #0000002a
        :pswitch_180  #0000002b
        :pswitch_180  #0000002c
        :pswitch_180  #0000002d
        :pswitch_180  #0000002e
        :pswitch_180  #0000002f
        :pswitch_180  #00000030
        :pswitch_180  #00000031
        :pswitch_172  #00000032
        :pswitch_15a  #00000033
        :pswitch_146  #00000034
        :pswitch_132  #00000035
        :pswitch_11e  #00000036
        :pswitch_10e  #00000037
        :pswitch_fa  #00000038
        :pswitch_ea  #00000039
        :pswitch_d6  #0000003a
        :pswitch_c0  #0000003b
        :pswitch_ac  #0000003c
        :pswitch_98  #0000003d
        :pswitch_88  #0000003e
        :pswitch_78  #0000003f
        :pswitch_68  #00000040
        :pswitch_54  #00000041
        :pswitch_44  #00000042
        :pswitch_30  #00000043
        :pswitch_1c  #00000044
    .end packed-switch
.end method

.method public final isInitialized(Ljava/lang/Object;)Z
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    iget v3, p0, Lcom/android/framework/protobuf/MessageSchema;->checkInitializedCount:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ge v2, v3, :cond_7b

    iget-object v3, p0, Lcom/android/framework/protobuf/MessageSchema;->intArray:[I

    aget v3, v3, v2

    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v6

    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-boolean v10, p0, Lcom/android/framework/protobuf/MessageSchema;->proto3:Z

    if-nez v10, :cond_33

    iget-object v10, p0, Lcom/android/framework/protobuf/MessageSchema;->buffer:[I

    add-int/lit8 v11, v3, 0x2

    aget v8, v10, v11

    const v10, 0xfffff

    and-int/2addr v10, v8

    ushr-int/lit8 v11, v8, 0x14

    shl-int v9, v4, v11

    if-eq v10, v0, :cond_33

    move v0, v10

    sget-object v4, Lcom/android/framework/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    int-to-long v11, v10

    invoke-virtual {v4, p1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    :cond_33
    invoke-static {v7}, Lcom/android/framework/protobuf/MessageSchema;->isRequired(I)Z

    move-result v4

    if-eqz v4, :cond_40

    invoke-direct {p0, p1, v3, v1, v9}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;III)Z

    move-result v4

    if-nez v4, :cond_40

    return v5

    :cond_40
    invoke-static {v7}, Lcom/android/framework/protobuf/MessageSchema;->type(I)I

    move-result v4

    sparse-switch v4, :sswitch_data_8e

    goto :goto_78

    :sswitch_48
    invoke-direct {p0, p1, v6, v3}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_78

    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v4

    invoke-static {p1, v7, v4}, Lcom/android/framework/protobuf/MessageSchema;->isInitialized(Ljava/lang/Object;ILcom/android/framework/protobuf/Schema;)Z

    move-result v4

    if-nez v4, :cond_78

    return v5

    :sswitch_59
    invoke-direct {p0, p1, v7, v3}, Lcom/android/framework/protobuf/MessageSchema;->isMapInitialized(Ljava/lang/Object;II)Z

    move-result v4

    if-nez v4, :cond_78

    return v5

    :sswitch_60
    invoke-direct {p0, p1, v7, v3}, Lcom/android/framework/protobuf/MessageSchema;->isListInitialized(Ljava/lang/Object;II)Z

    move-result v4

    if-nez v4, :cond_78

    return v5

    :sswitch_67
    invoke-direct {p0, p1, v3, v1, v9}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;III)Z

    move-result v4

    if-eqz v4, :cond_78

    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v4

    invoke-static {p1, v7, v4}, Lcom/android/framework/protobuf/MessageSchema;->isInitialized(Ljava/lang/Object;ILcom/android/framework/protobuf/Schema;)Z

    move-result v4

    if-nez v4, :cond_78

    return v5

    :cond_78
    :goto_78
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_7b
    iget-boolean v2, p0, Lcom/android/framework/protobuf/MessageSchema;->hasExtensions:Z

    if-eqz v2, :cond_8c

    iget-object v2, p0, Lcom/android/framework/protobuf/MessageSchema;->extensionSchema:Lcom/android/framework/protobuf/ExtensionSchema;

    invoke-virtual {v2, p1}, Lcom/android/framework/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Lcom/android/framework/protobuf/FieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/framework/protobuf/FieldSet;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_8c

    return v5

    :cond_8c
    return v4

    nop

    :sswitch_data_8e
    .sparse-switch
        0x9 -> :sswitch_67
        0x11 -> :sswitch_67
        0x1b -> :sswitch_60
        0x31 -> :sswitch_60
        0x32 -> :sswitch_59
        0x3c -> :sswitch_48
        0x44 -> :sswitch_48
    .end sparse-switch
.end method

.method public makeImmutable(Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget v0, p0, Lcom/android/framework/protobuf/MessageSchema;->checkInitializedCount:I

    :goto_2
    iget v1, p0, Lcom/android/framework/protobuf/MessageSchema;->repeatedFieldOffsetStart:I

    if-ge v0, v1, :cond_25

    iget-object v1, p0, Lcom/android/framework/protobuf/MessageSchema;->intArray:[I

    aget v1, v1, v0

    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-static {p1, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_19

    goto :goto_22

    :cond_19
    iget-object v4, p0, Lcom/android/framework/protobuf/MessageSchema;->mapFieldSchema:Lcom/android/framework/protobuf/MapFieldSchema;

    invoke-interface {v4, v3}, Lcom/android/framework/protobuf/MapFieldSchema;->toImmutable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p1, v1, v2, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_25
    iget-object v0, p0, Lcom/android/framework/protobuf/MessageSchema;->intArray:[I

    array-length v0, v0

    iget v1, p0, Lcom/android/framework/protobuf/MessageSchema;->repeatedFieldOffsetStart:I

    :goto_2a
    if-ge v1, v0, :cond_39

    iget-object v2, p0, Lcom/android/framework/protobuf/MessageSchema;->listFieldSchema:Lcom/android/framework/protobuf/ListFieldSchema;

    iget-object v3, p0, Lcom/android/framework/protobuf/MessageSchema;->intArray:[I

    aget v3, v3, v1

    int-to-long v3, v3

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/framework/protobuf/ListFieldSchema;->makeImmutableListAt(Ljava/lang/Object;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    :cond_39
    iget-object v1, p0, Lcom/android/framework/protobuf/MessageSchema;->unknownFieldSchema:Lcom/android/framework/protobuf/UnknownFieldSchema;

    invoke-virtual {v1, p1}, Lcom/android/framework/protobuf/UnknownFieldSchema;->makeImmutable(Ljava/lang/Object;)V

    iget-boolean v1, p0, Lcom/android/framework/protobuf/MessageSchema;->hasExtensions:Z

    if-eqz v1, :cond_47

    iget-object v1, p0, Lcom/android/framework/protobuf/MessageSchema;->extensionSchema:Lcom/android/framework/protobuf/ExtensionSchema;

    invoke-virtual {v1, p1}, Lcom/android/framework/protobuf/ExtensionSchema;->makeImmutable(Ljava/lang/Object;)V

    :cond_47
    return-void
.end method

.method public mergeFrom(Ljava/lang/Object;Lcom/android/framework/protobuf/Reader;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/android/framework/protobuf/Reader;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_e

    iget-object v1, p0, Lcom/android/framework/protobuf/MessageSchema;->unknownFieldSchema:Lcom/android/framework/protobuf/UnknownFieldSchema;

    iget-object v2, p0, Lcom/android/framework/protobuf/MessageSchema;->extensionSchema:Lcom/android/framework/protobuf/ExtensionSchema;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/framework/protobuf/MessageSchema;->mergeFromHelper(Lcom/android/framework/protobuf/UnknownFieldSchema;Lcom/android/framework/protobuf/ExtensionSchema;Ljava/lang/Object;Lcom/android/framework/protobuf/Reader;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V

    return-void

    :cond_e
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    if-eqz p2, :cond_21

    const/4 v0, 0x0

    :goto_3
    iget-object v1, p0, Lcom/android/framework/protobuf/MessageSchema;->buffer:[I

    array-length v1, v1

    if-ge v0, v1, :cond_e

    invoke-direct {p0, p1, p2, v0}, Lcom/android/framework/protobuf/MessageSchema;->mergeSingleField(Ljava/lang/Object;Ljava/lang/Object;I)V

    add-int/lit8 v0, v0, 0x3

    goto :goto_3

    :cond_e
    iget-boolean v0, p0, Lcom/android/framework/protobuf/MessageSchema;->proto3:Z

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/android/framework/protobuf/MessageSchema;->unknownFieldSchema:Lcom/android/framework/protobuf/UnknownFieldSchema;

    invoke-static {v0, p1, p2}, Lcom/android/framework/protobuf/SchemaUtil;->mergeUnknownFields(Lcom/android/framework/protobuf/UnknownFieldSchema;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/android/framework/protobuf/MessageSchema;->hasExtensions:Z

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/framework/protobuf/MessageSchema;->extensionSchema:Lcom/android/framework/protobuf/ExtensionSchema;

    invoke-static {v0, p1, p2}, Lcom/android/framework/protobuf/SchemaUtil;->mergeExtensions(Lcom/android/framework/protobuf/ExtensionSchema;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_20
    return-void

    :cond_21
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public mergeFrom(Ljava/lang/Object;[BIILcom/android/framework/protobuf/ArrayDecoders$Registers;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Lcom/android/framework/protobuf/ArrayDecoders$Registers;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/framework/protobuf/MessageSchema;->proto3:Z

    if-eqz v0, :cond_8

    invoke-direct/range {p0 .. p5}, Lcom/android/framework/protobuf/MessageSchema;->parseProto3Message(Ljava/lang/Object;[BIILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    goto :goto_12

    :cond_8
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/framework/protobuf/MessageSchema;->parseProto2Message(Ljava/lang/Object;[BIIILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    :goto_12
    return-void
.end method

.method public newInstance()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/framework/protobuf/MessageSchema;->newInstanceSchema:Lcom/android/framework/protobuf/NewInstanceSchema;

    iget-object v1, p0, Lcom/android/framework/protobuf/MessageSchema;->defaultInstance:Lcom/android/framework/protobuf/MessageLite;

    invoke-interface {v0, v1}, Lcom/android/framework/protobuf/NewInstanceSchema;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method parseProto2Message(Ljava/lang/Object;[BIIILcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .registers 42
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIII",
            "Lcom/android/framework/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    sget-object v10, Lcom/android/framework/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    move v8, v0

    move v7, v1

    move/from16 v0, p3

    :goto_17
    if-ge v0, v13, :cond_68e

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v12, v0

    if-gez v0, :cond_28

    invoke-static {v0, v12, v1, v9}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32(I[BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    iget v0, v9, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    move v2, v0

    move v5, v1

    goto :goto_2a

    :cond_28
    move v2, v0

    move v5, v1

    :goto_2a
    ushr-int/lit8 v1, v2, 0x3

    and-int/lit8 v0, v2, 0x7

    if-le v1, v3, :cond_38

    div-int/lit8 v6, v4, 0x3

    invoke-direct {v15, v1, v6}, Lcom/android/framework/protobuf/MessageSchema;->positionForFieldNumber(II)I

    move-result v4

    move v6, v4

    goto :goto_3d

    :cond_38
    invoke-direct {v15, v1}, Lcom/android/framework/protobuf/MessageSchema;->positionForFieldNumber(I)I

    move-result v4

    move v6, v4

    :goto_3d
    move/from16 v16, v1

    const/4 v3, -0x1

    if-ne v6, v3, :cond_52

    const/4 v3, 0x0

    move v15, v0

    move/from16 v24, v1

    move/from16 v18, v2

    move/from16 v19, v3

    move/from16 v23, v5

    move/from16 v22, v7

    move-object/from16 v31, v10

    goto/16 :goto_62b

    :cond_52
    iget-object v3, v15, Lcom/android/framework/protobuf/MessageSchema;->buffer:[I

    add-int/lit8 v4, v6, 0x1

    aget v4, v3, v4

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->type(I)I

    move-result v3

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v11

    move/from16 v17, v2

    const/16 v2, 0x11

    move/from16 v18, v4

    if-gt v3, v2, :cond_4ae

    iget-object v2, v15, Lcom/android/framework/protobuf/MessageSchema;->buffer:[I

    add-int/lit8 v19, v6, 0x2

    aget v19, v2, v19

    ushr-int/lit8 v2, v19, 0x14

    const/4 v4, 0x1

    shl-int v21, v4, v2

    const v2, 0xfffff

    and-int v2, v19, v2

    if-eq v2, v8, :cond_8f

    const/4 v4, -0x1

    if-eq v8, v4, :cond_84

    move/from16 p3, v5

    int-to-long v4, v8

    invoke-virtual {v10, v14, v4, v5, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_86

    :cond_84
    move/from16 p3, v5

    :goto_86
    move v4, v2

    move v8, v4

    int-to-long v4, v2

    invoke-virtual {v10, v14, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    move v7, v4

    goto :goto_91

    :cond_8f
    move/from16 p3, v5

    :goto_91
    const/4 v4, 0x5

    packed-switch v3, :pswitch_data_6de

    move v13, v0

    move/from16 v24, v1

    move/from16 v26, v3

    move/from16 v25, v8

    move/from16 v27, v17

    move/from16 v30, v18

    move/from16 v8, p3

    move/from16 v17, v2

    move-object/from16 v18, v10

    move-wide/from16 v33, v11

    move-object/from16 v12, p2

    move-object v11, v9

    move-wide/from16 v9, v33

    goto/16 :goto_49f

    :pswitch_af  #0x11
    const/4 v4, 0x3

    if-ne v0, v4, :cond_107

    shl-int/lit8 v4, v1, 0x3

    or-int/lit8 v20, v4, 0x4

    nop

    invoke-direct {v15, v6}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v4

    move v5, v0

    move-object v0, v4

    move/from16 v24, v1

    move-object/from16 v1, p2

    move/from16 v4, v17

    move/from16 v17, v2

    move/from16 v2, p3

    move/from16 v25, v8

    move v8, v3

    move/from16 v3, p4

    move/from16 v26, v8

    move/from16 v27, v18

    move v8, v4

    move/from16 v4, v20

    move v13, v5

    move/from16 v18, v8

    move/from16 v8, p3

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeGroupField(Lcom/android/framework/protobuf/Schema;[BIIILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    and-int v1, v7, v21

    if-nez v1, :cond_e8

    iget-object v1, v9, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-virtual {v10, v14, v11, v12, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_f6

    :cond_e8
    nop

    invoke-virtual {v10, v14, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, v9, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/framework/protobuf/Internal;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v14, v11, v12, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_f6
    or-int v7, v7, v21

    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v11, p5

    move v4, v6

    move/from16 v3, v16

    move/from16 v2, v18

    move/from16 v8, v25

    goto/16 :goto_17

    :cond_107
    move v13, v0

    move/from16 v24, v1

    move/from16 v26, v3

    move/from16 v25, v8

    move/from16 v27, v18

    move/from16 v8, p3

    move/from16 v18, v17

    move/from16 v17, v2

    move/from16 v30, v27

    move/from16 v27, v18

    move-object/from16 v18, v10

    move-wide/from16 v33, v11

    move-object/from16 v12, p2

    move-object v11, v9

    move-wide/from16 v9, v33

    goto/16 :goto_49f

    :pswitch_125  #0x10
    move v13, v0

    move/from16 v24, v1

    move/from16 v26, v3

    move/from16 v25, v8

    move/from16 v27, v18

    move/from16 v8, p3

    move/from16 v18, v17

    move/from16 v17, v2

    if-nez v13, :cond_15e

    move-wide v4, v11

    move-object/from16 v12, p2

    invoke-static {v12, v8, v9}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint64([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v8

    iget-wide v0, v9, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->long1:J

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide v22

    move-object v0, v10

    move-object/from16 v1, p1

    move-wide v2, v4

    move-wide/from16 v28, v4

    move-wide/from16 v4, v22

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v7, v7, v21

    move/from16 v13, p4

    move/from16 v11, p5

    move v4, v6

    move v0, v8

    move/from16 v3, v16

    move/from16 v2, v18

    move/from16 v8, v25

    goto/16 :goto_17

    :cond_15e
    move-wide/from16 v28, v11

    move-object/from16 v12, p2

    move-object v11, v9

    move/from16 v30, v27

    move/from16 v27, v18

    move-object/from16 v18, v10

    move-wide/from16 v9, v28

    goto/16 :goto_49f

    :pswitch_16d  #0xf
    move v13, v0

    move/from16 v24, v1

    move/from16 v26, v3

    move/from16 v25, v8

    move-wide/from16 v28, v11

    move/from16 v27, v18

    move-object/from16 v12, p2

    move/from16 v8, p3

    move/from16 v18, v17

    move/from16 v17, v2

    if-nez v13, :cond_1a0

    invoke-static {v12, v8, v9}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget v1, v9, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-static {v1}, Lcom/android/framework/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result v1

    move-wide/from16 v2, v28

    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    or-int v7, v7, v21

    move/from16 v13, p4

    move/from16 v11, p5

    move v4, v6

    move/from16 v3, v16

    move/from16 v2, v18

    move/from16 v8, v25

    goto/16 :goto_17

    :cond_1a0
    move-wide/from16 v2, v28

    move-object v11, v9

    move/from16 v30, v27

    move/from16 v27, v18

    move-object/from16 v18, v10

    move-wide v9, v2

    goto/16 :goto_49f

    :pswitch_1ac  #0xc
    move v13, v0

    move/from16 v24, v1

    move/from16 v26, v3

    move/from16 v25, v8

    move/from16 v27, v18

    move/from16 v8, p3

    move/from16 v18, v17

    move/from16 v17, v2

    move-wide v2, v11

    move-object/from16 v12, p2

    if-nez v13, :cond_206

    invoke-static {v12, v8, v9}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget v1, v9, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-direct {v15, v6}, Lcom/android/framework/protobuf/MessageSchema;->getEnumFieldVerifier(I)Lcom/android/framework/protobuf/Internal$EnumVerifier;

    move-result-object v4

    if-eqz v4, :cond_1f1

    invoke-interface {v4, v1}, Lcom/android/framework/protobuf/Internal$EnumVerifier;->isInRange(I)Z

    move-result v5

    if-eqz v5, :cond_1d5

    move/from16 v9, v18

    goto :goto_1f3

    :cond_1d5
    invoke-static/range {p1 .. p1}, Lcom/android/framework/protobuf/MessageSchema;->getMutableUnknownFields(Ljava/lang/Object;)Lcom/android/framework/protobuf/UnknownFieldSetLite;

    move-result-object v5

    int-to-long v8, v1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move/from16 v9, v18

    invoke-virtual {v5, v9, v8}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    move/from16 v13, p4

    move/from16 v11, p5

    move v4, v6

    move v2, v9

    move/from16 v3, v16

    move/from16 v8, v25

    move-object/from16 v9, p6

    goto/16 :goto_17

    :cond_1f1
    move/from16 v9, v18

    :goto_1f3
    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    or-int v7, v7, v21

    move/from16 v13, p4

    move/from16 v11, p5

    move v4, v6

    move v2, v9

    move/from16 v3, v16

    move/from16 v8, v25

    move-object/from16 v9, p6

    goto/16 :goto_17

    :cond_206
    move/from16 v9, v18

    move-object/from16 v11, p6

    move-object/from16 v18, v10

    move/from16 v30, v27

    move/from16 v27, v9

    move-wide v9, v2

    goto/16 :goto_49f

    :pswitch_213  #0xa
    move v13, v0

    move/from16 v24, v1

    move/from16 v26, v3

    move/from16 v25, v8

    move/from16 v9, v17

    move/from16 v27, v18

    move/from16 v8, p3

    move/from16 v17, v2

    move-wide v2, v11

    move-object/from16 v12, p2

    const/4 v0, 0x2

    if-ne v13, v0, :cond_242

    move-object/from16 v11, p6

    invoke-static {v12, v8, v11}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeBytes([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget-object v1, v11, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    or-int v7, v7, v21

    move/from16 v13, p4

    move v4, v6

    move v2, v9

    move-object v9, v11

    move/from16 v3, v16

    move/from16 v8, v25

    move/from16 v11, p5

    goto/16 :goto_17

    :cond_242
    move-object/from16 v11, p6

    move-object/from16 v18, v10

    move/from16 v30, v27

    move/from16 v27, v9

    move-wide v9, v2

    goto/16 :goto_49f

    :pswitch_24d  #0x9
    move v13, v0

    move/from16 v24, v1

    move/from16 v26, v3

    move/from16 v25, v8

    move/from16 v27, v18

    move/from16 v8, p3

    move-wide/from16 v33, v11

    move-object/from16 v12, p2

    move-object v11, v9

    move/from16 v9, v17

    move/from16 v17, v2

    move-wide/from16 v2, v33

    const/4 v0, 0x2

    if-ne v13, v0, :cond_297

    nop

    invoke-direct {v15, v6}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v0

    move v5, v13

    move/from16 v13, p4

    invoke-static {v0, v12, v8, v13, v11}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeMessageField(Lcom/android/framework/protobuf/Schema;[BIILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    and-int v1, v7, v21

    if-nez v1, :cond_27c

    iget-object v1, v11, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_28a

    :cond_27c
    nop

    invoke-virtual {v10, v14, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    iget-object v4, v11, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-static {v1, v4}, Lcom/android/framework/protobuf/Internal;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_28a
    or-int v7, v7, v21

    move v4, v6

    move v2, v9

    move-object v9, v11

    move/from16 v3, v16

    move/from16 v8, v25

    move/from16 v11, p5

    goto/16 :goto_17

    :cond_297
    move v5, v13

    move/from16 v13, p4

    move v13, v5

    move-object/from16 v18, v10

    move/from16 v30, v27

    move/from16 v27, v9

    move-wide v9, v2

    goto/16 :goto_49f

    :pswitch_2a4  #0x8
    move v5, v0

    move/from16 v24, v1

    move/from16 v26, v3

    move/from16 v25, v8

    move/from16 v27, v18

    move/from16 v8, p3

    move-wide/from16 v33, v11

    move-object/from16 v12, p2

    move-object v11, v9

    move/from16 v9, v17

    move/from16 v17, v2

    move-wide/from16 v2, v33

    const/4 v0, 0x2

    if-ne v5, v0, :cond_2df

    const/high16 v0, 0x20000000

    move/from16 v1, v27

    and-int/2addr v0, v1

    if-nez v0, :cond_2c9

    invoke-static {v12, v8, v11}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeString([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    goto :goto_2cd

    :cond_2c9
    invoke-static {v12, v8, v11}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeStringRequireUtf8([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    :goto_2cd
    iget-object v4, v11, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-virtual {v10, v14, v2, v3, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    or-int v7, v7, v21

    move v4, v6

    move v2, v9

    move-object v9, v11

    move/from16 v3, v16

    move/from16 v8, v25

    move/from16 v11, p5

    goto/16 :goto_17

    :cond_2df
    move/from16 v1, v27

    move/from16 v30, v1

    move v13, v5

    move/from16 v27, v9

    move-object/from16 v18, v10

    move-wide v9, v2

    goto/16 :goto_49f

    :pswitch_2eb  #0x7
    move v5, v0

    move/from16 v24, v1

    move/from16 v26, v3

    move/from16 v25, v8

    move/from16 v1, v18

    move/from16 v8, p3

    move-wide/from16 v33, v11

    move-object/from16 v12, p2

    move-object v11, v9

    move/from16 v9, v17

    move/from16 v17, v2

    move-wide/from16 v2, v33

    if-nez v5, :cond_328

    invoke-static {v12, v8, v11}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint64([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    move/from16 p3, v0

    move/from16 v27, v1

    iget-wide v0, v11, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->long1:J

    const-wide/16 v28, 0x0

    cmp-long v0, v0, v28

    if-eqz v0, :cond_315

    const/4 v4, 0x1

    goto :goto_316

    :cond_315
    const/4 v4, 0x0

    :goto_316
    invoke-static {v14, v2, v3, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putBoolean(Ljava/lang/Object;JZ)V

    or-int v7, v7, v21

    move/from16 v0, p3

    move v4, v6

    move v2, v9

    move-object v9, v11

    move/from16 v3, v16

    move/from16 v8, v25

    move/from16 v11, p5

    goto/16 :goto_17

    :cond_328
    move/from16 v27, v1

    move v13, v5

    move-object/from16 v18, v10

    move/from16 v30, v27

    move/from16 v27, v9

    move-wide v9, v2

    goto/16 :goto_49f

    :pswitch_334  #0x6, 0xd
    move v5, v0

    move/from16 v24, v1

    move/from16 v26, v3

    move/from16 v25, v8

    move/from16 v27, v18

    move/from16 v8, p3

    move-wide/from16 v33, v11

    move-object/from16 v12, p2

    move-object v11, v9

    move/from16 v9, v17

    move/from16 v17, v2

    move-wide/from16 v2, v33

    if-ne v5, v4, :cond_362

    invoke-static {v12, v8}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeFixed32([BI)I

    move-result v0

    invoke-virtual {v10, v14, v2, v3, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v0, v8, 0x4

    or-int v7, v7, v21

    move v4, v6

    move v2, v9

    move-object v9, v11

    move/from16 v3, v16

    move/from16 v8, v25

    move/from16 v11, p5

    goto/16 :goto_17

    :cond_362
    move v13, v5

    move-object/from16 v18, v10

    move/from16 v30, v27

    move/from16 v27, v9

    move-wide v9, v2

    goto/16 :goto_49f

    :pswitch_36c  #0x5, 0xe
    move v5, v0

    move/from16 v24, v1

    move/from16 v26, v3

    move/from16 v25, v8

    move/from16 v27, v18

    move/from16 v8, p3

    move-wide/from16 v33, v11

    move-object/from16 v12, p2

    move-object v11, v9

    move/from16 v9, v17

    move/from16 v17, v2

    move-wide/from16 v2, v33

    const/4 v0, 0x1

    if-ne v5, v0, :cond_3a9

    invoke-static {v12, v8}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeFixed64([BI)J

    move-result-wide v22

    move-object v0, v10

    move/from16 v4, v27

    move-object/from16 v1, p1

    move-wide/from16 v28, v2

    move/from16 v30, v4

    move v13, v5

    move-wide/from16 v4, v22

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    add-int/lit8 v0, v8, 0x8

    or-int v7, v7, v21

    move/from16 v13, p4

    move v4, v6

    move v2, v9

    move-object v9, v11

    move/from16 v3, v16

    move/from16 v8, v25

    move/from16 v11, p5

    goto/16 :goto_17

    :cond_3a9
    move-wide/from16 v28, v2

    move v13, v5

    move/from16 v30, v27

    move/from16 v27, v9

    move-object/from16 v18, v10

    move-wide/from16 v9, v28

    goto/16 :goto_49f

    :pswitch_3b6  #0x4, 0xb
    move v13, v0

    move/from16 v24, v1

    move/from16 v26, v3

    move/from16 v25, v8

    move-wide/from16 v28, v11

    move/from16 v30, v18

    move-object/from16 v12, p2

    move/from16 v8, p3

    move-object v11, v9

    move/from16 v9, v17

    move/from16 v17, v2

    if-nez v13, :cond_3e6

    invoke-static {v12, v8, v11}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget v1, v11, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    move-wide/from16 v4, v28

    invoke-virtual {v10, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    or-int v7, v7, v21

    move/from16 v13, p4

    move v4, v6

    move v2, v9

    move-object v9, v11

    move/from16 v3, v16

    move/from16 v8, v25

    move/from16 v11, p5

    goto/16 :goto_17

    :cond_3e6
    move-wide/from16 v4, v28

    move/from16 v27, v9

    move-object/from16 v18, v10

    move-wide v9, v4

    goto/16 :goto_49f

    :pswitch_3ef  #0x2, 0x3
    move v13, v0

    move/from16 v24, v1

    move/from16 v26, v3

    move/from16 v25, v8

    move-wide v4, v11

    move/from16 v30, v18

    move-object/from16 v12, p2

    move/from16 v8, p3

    move-object v11, v9

    move/from16 v9, v17

    move/from16 v17, v2

    if-nez v13, :cond_42d

    invoke-static {v12, v8, v11}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint64([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v8

    iget-wide v2, v11, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->long1:J

    move-object v0, v10

    move-object/from16 v1, p1

    move-wide/from16 v22, v2

    move-wide v2, v4

    move/from16 v27, v9

    move-object/from16 v18, v10

    move-wide v9, v4

    move-wide/from16 v4, v22

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v7, v7, v21

    move/from16 v13, p4

    move v4, v6

    move v0, v8

    move-object v9, v11

    move/from16 v3, v16

    move-object/from16 v10, v18

    move/from16 v8, v25

    move/from16 v2, v27

    move/from16 v11, p5

    goto/16 :goto_17

    :cond_42d
    move/from16 v27, v9

    move-object/from16 v18, v10

    move-wide v9, v4

    goto/16 :goto_49f

    :pswitch_434  #0x1
    move v13, v0

    move/from16 v24, v1

    move/from16 v26, v3

    move/from16 v25, v8

    move/from16 v27, v17

    move/from16 v30, v18

    move/from16 v8, p3

    move/from16 v17, v2

    move-object/from16 v18, v10

    move-wide/from16 v33, v11

    move-object/from16 v12, p2

    move-object v11, v9

    move-wide/from16 v9, v33

    if-ne v13, v4, :cond_49f

    invoke-static {v12, v8}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeFloat([BI)F

    move-result v0

    invoke-static {v14, v9, v10, v0}, Lcom/android/framework/protobuf/UnsafeUtil;->putFloat(Ljava/lang/Object;JF)V

    add-int/lit8 v0, v8, 0x4

    or-int v7, v7, v21

    move/from16 v13, p4

    move v4, v6

    move-object v9, v11

    move/from16 v3, v16

    move-object/from16 v10, v18

    move/from16 v8, v25

    move/from16 v2, v27

    move/from16 v11, p5

    goto/16 :goto_17

    :pswitch_469  #0x0
    move v13, v0

    move/from16 v24, v1

    move/from16 v26, v3

    move/from16 v25, v8

    move/from16 v27, v17

    move/from16 v30, v18

    move/from16 v8, p3

    move/from16 v17, v2

    move-object/from16 v18, v10

    move-wide/from16 v33, v11

    move-object/from16 v12, p2

    move-object v11, v9

    move-wide/from16 v9, v33

    const/4 v0, 0x1

    if-ne v13, v0, :cond_49f

    invoke-static {v12, v8}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeDouble([BI)D

    move-result-wide v0

    invoke-static {v14, v9, v10, v0, v1}, Lcom/android/framework/protobuf/UnsafeUtil;->putDouble(Ljava/lang/Object;JD)V

    add-int/lit8 v0, v8, 0x8

    or-int v7, v7, v21

    move/from16 v13, p4

    move v4, v6

    move-object v9, v11

    move/from16 v3, v16

    move-object/from16 v10, v18

    move/from16 v8, v25

    move/from16 v2, v27

    move/from16 v11, p5

    goto/16 :goto_17

    :cond_49f
    :goto_49f
    move/from16 v19, v6

    move/from16 v22, v7

    move/from16 v23, v8

    move v15, v13

    move-object/from16 v31, v18

    move/from16 v8, v25

    move/from16 v18, v27

    goto/16 :goto_62b

    :cond_4ae
    move v13, v0

    move/from16 v24, v1

    move/from16 v26, v3

    move/from16 v25, v8

    move/from16 v27, v17

    move/from16 v30, v18

    move v8, v5

    move-object/from16 v18, v10

    move-wide/from16 v33, v11

    move-object/from16 v12, p2

    move-object v11, v9

    move-wide/from16 v9, v33

    const/16 v0, 0x1b

    move/from16 v5, v26

    if-ne v5, v0, :cond_52e

    const/4 v0, 0x2

    if-ne v13, v0, :cond_51e

    move-object/from16 v4, v18

    invoke-virtual {v4, v14, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/framework/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_4f0

    invoke-interface {v0}, Lcom/android/framework/protobuf/Internal$ProtobufList;->size()I

    move-result v1

    nop

    if-nez v1, :cond_4e4

    const/16 v2, 0xa

    goto :goto_4e6

    :cond_4e4
    mul-int/lit8 v2, v1, 0x2

    :goto_4e6
    invoke-interface {v0, v2}, Lcom/android/framework/protobuf/Internal$ProtobufList;->mutableCopyWithCapacity(I)Lcom/android/framework/protobuf/Internal$ProtobufList;

    move-result-object v0

    invoke-virtual {v4, v14, v9, v10, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object/from16 v17, v0

    goto :goto_4f2

    :cond_4f0
    move-object/from16 v17, v0

    :goto_4f2
    nop

    invoke-direct {v15, v6}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v0

    move/from16 v1, v27

    move-object/from16 v2, p2

    move v3, v8

    move-object/from16 v18, v4

    move/from16 v4, p4

    move-wide/from16 v28, v9

    move v9, v5

    move-object/from16 v5, v17

    move/from16 v19, v6

    move-object/from16 v6, p6

    invoke-static/range {v0 .. v6}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeMessageList(Lcom/android/framework/protobuf/Schema;I[BIILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    move/from16 v13, p4

    move-object v9, v11

    move/from16 v3, v16

    move-object/from16 v10, v18

    move/from16 v4, v19

    move/from16 v8, v25

    move/from16 v2, v27

    move/from16 v11, p5

    goto/16 :goto_17

    :cond_51e
    move/from16 v19, v6

    move-wide/from16 v28, v9

    move v9, v5

    move/from16 v22, v7

    move/from16 v23, v8

    move v15, v13

    move-object/from16 v31, v18

    move/from16 v18, v27

    goto/16 :goto_5e4

    :cond_52e
    move/from16 v19, v6

    move-wide/from16 v28, v9

    move v9, v5

    const/16 v0, 0x31

    if-gt v9, v0, :cond_592

    move v10, v8

    move/from16 v6, v30

    int-to-long v4, v6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v8

    move-wide/from16 v20, v4

    const/16 v17, -0x1

    move/from16 v4, p4

    move/from16 v5, v27

    move/from16 v17, v6

    move/from16 v6, v24

    move/from16 v22, v7

    move v7, v13

    move/from16 v23, v8

    move/from16 v26, v9

    move/from16 v9, v27

    move/from16 v8, v19

    move v15, v10

    move-object/from16 v31, v18

    move-wide/from16 v27, v28

    move/from16 v18, v9

    move-wide/from16 v9, v20

    move/from16 v11, v26

    move/from16 v32, v13

    move-wide/from16 v12, v27

    move-object/from16 v14, p6

    invoke-direct/range {v0 .. v14}, Lcom/android/framework/protobuf/MessageSchema;->parseRepeatedField(Ljava/lang/Object;[BIIIIIIJIJLcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    if-eq v0, v15, :cond_58a

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    move/from16 v3, v16

    move/from16 v2, v18

    move/from16 v4, v19

    move/from16 v7, v22

    move/from16 v8, v25

    move-object/from16 v10, v31

    goto/16 :goto_17

    :cond_58a
    move/from16 v23, v0

    move/from16 v8, v25

    move/from16 v15, v32

    goto/16 :goto_62b

    :cond_592
    move/from16 v22, v7

    move/from16 v23, v8

    move/from16 v26, v9

    move/from16 v32, v13

    move-object/from16 v31, v18

    move/from16 v18, v27

    move-wide/from16 v27, v28

    move/from16 v17, v30

    const/16 v0, 0x32

    move/from16 v14, v26

    if-ne v14, v0, :cond_5e7

    move/from16 v15, v32

    const/4 v0, 0x2

    if-ne v15, v0, :cond_5e4

    move/from16 v9, v23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v23

    move/from16 v4, p4

    move/from16 v5, v19

    move-wide/from16 v6, v27

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/framework/protobuf/MessageSchema;->parseMapField(Ljava/lang/Object;[BIIIJLcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    if-eq v0, v9, :cond_5df

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    move/from16 v3, v16

    move/from16 v2, v18

    move/from16 v4, v19

    move/from16 v7, v22

    move/from16 v8, v25

    move-object/from16 v10, v31

    goto/16 :goto_17

    :cond_5df
    move/from16 v23, v0

    move/from16 v8, v25

    goto :goto_62b

    :cond_5e4
    :goto_5e4
    move/from16 v8, v25

    goto :goto_62b

    :cond_5e7
    move/from16 v15, v32

    move/from16 v13, v23

    nop

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v23

    move/from16 v4, p4

    move/from16 v5, v18

    move/from16 v6, v24

    move v7, v15

    move/from16 v8, v17

    move v9, v14

    move-wide/from16 v10, v27

    move/from16 v12, v19

    move/from16 v26, v14

    move v14, v13

    move-object/from16 v13, p6

    invoke-direct/range {v0 .. v13}, Lcom/android/framework/protobuf/MessageSchema;->parseOneofField(Ljava/lang/Object;[BIIIIIIIJILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    if-eq v0, v14, :cond_627

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    move/from16 v3, v16

    move/from16 v2, v18

    move/from16 v4, v19

    move/from16 v7, v22

    move/from16 v8, v25

    move-object/from16 v10, v31

    goto/16 :goto_17

    :cond_627
    move/from16 v23, v0

    move/from16 v8, v25

    :goto_62b
    move/from16 v9, p5

    move/from16 v10, v18

    if-ne v10, v9, :cond_642

    if-eqz v9, :cond_642

    move-object/from16 v11, p0

    move-object/from16 v12, p6

    move v2, v10

    move/from16 v3, v16

    move/from16 v4, v19

    move/from16 v7, v22

    move/from16 v0, v23

    goto/16 :goto_697

    :cond_642
    move-object/from16 v11, p0

    iget-boolean v0, v11, Lcom/android/framework/protobuf/MessageSchema;->hasExtensions:Z

    if-eqz v0, :cond_666

    move-object/from16 v12, p6

    iget-object v0, v12, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->extensionRegistry:Lcom/android/framework/protobuf/ExtensionRegistryLite;

    invoke-static {}, Lcom/android/framework/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/android/framework/protobuf/ExtensionRegistryLite;

    move-result-object v1

    if-eq v0, v1, :cond_668

    iget-object v5, v11, Lcom/android/framework/protobuf/MessageSchema;->defaultInstance:Lcom/android/framework/protobuf/MessageLite;

    iget-object v6, v11, Lcom/android/framework/protobuf/MessageSchema;->unknownFieldSchema:Lcom/android/framework/protobuf/UnknownFieldSchema;

    move v0, v10

    move-object/from16 v1, p2

    move/from16 v2, v23

    move/from16 v3, p4

    move-object/from16 v4, p1

    move-object/from16 v7, p6

    invoke-static/range {v0 .. v7}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeExtensionOrUnknownField(I[BIILjava/lang/Object;Lcom/android/framework/protobuf/MessageLite;Lcom/android/framework/protobuf/UnknownFieldSchema;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    goto :goto_67a

    :cond_666
    move-object/from16 v12, p6

    :cond_668
    nop

    invoke-static/range {p1 .. p1}, Lcom/android/framework/protobuf/MessageSchema;->getMutableUnknownFields(Ljava/lang/Object;)Lcom/android/framework/protobuf/UnknownFieldSetLite;

    move-result-object v4

    move v0, v10

    move-object/from16 v1, p2

    move/from16 v2, v23

    move/from16 v3, p4

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeUnknownField(I[BIILcom/android/framework/protobuf/UnknownFieldSetLite;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    :goto_67a
    move-object/from16 v14, p1

    move/from16 v13, p4

    move v2, v10

    move-object v15, v11

    move/from16 v3, v16

    move/from16 v4, v19

    move/from16 v7, v22

    move-object/from16 v10, v31

    move v11, v9

    move-object v9, v12

    move-object/from16 v12, p2

    goto/16 :goto_17

    :cond_68e
    move/from16 v22, v7

    move/from16 v25, v8

    move-object v12, v9

    move-object/from16 v31, v10

    move v9, v11

    move-object v11, v15

    :goto_697
    const/4 v1, -0x1

    if-eq v8, v1, :cond_6a3

    int-to-long v5, v8

    move-object/from16 v1, p1

    move-object/from16 v10, v31

    invoke-virtual {v10, v1, v5, v6, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_6a7

    :cond_6a3
    move-object/from16 v1, p1

    move-object/from16 v10, v31

    :goto_6a7
    const/4 v5, 0x0

    iget v6, v11, Lcom/android/framework/protobuf/MessageSchema;->checkInitializedCount:I

    :goto_6aa
    iget v13, v11, Lcom/android/framework/protobuf/MessageSchema;->repeatedFieldOffsetStart:I

    if-ge v6, v13, :cond_6be

    iget-object v13, v11, Lcom/android/framework/protobuf/MessageSchema;->intArray:[I

    aget v13, v13, v6

    iget-object v14, v11, Lcom/android/framework/protobuf/MessageSchema;->unknownFieldSchema:Lcom/android/framework/protobuf/UnknownFieldSchema;

    invoke-direct {v11, v1, v13, v5, v14}, Lcom/android/framework/protobuf/MessageSchema;->filterMapUnknownEnumValues(Ljava/lang/Object;ILjava/lang/Object;Lcom/android/framework/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v13

    move-object v5, v13

    check-cast v5, Lcom/android/framework/protobuf/UnknownFieldSetLite;

    add-int/lit8 v6, v6, 0x1

    goto :goto_6aa

    :cond_6be
    if-eqz v5, :cond_6c5

    iget-object v6, v11, Lcom/android/framework/protobuf/MessageSchema;->unknownFieldSchema:Lcom/android/framework/protobuf/UnknownFieldSchema;

    invoke-virtual {v6, v1, v5}, Lcom/android/framework/protobuf/UnknownFieldSchema;->setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6c5
    if-nez v9, :cond_6d1

    move/from16 v6, p4

    if-ne v0, v6, :cond_6cc

    goto :goto_6d7

    :cond_6cc
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v13

    throw v13

    :cond_6d1
    move/from16 v6, p4

    if-gt v0, v6, :cond_6d8

    if-ne v2, v9, :cond_6d8

    :goto_6d7
    return v0

    :cond_6d8
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v13

    throw v13

    nop

    :pswitch_data_6de
    .packed-switch 0x0
        :pswitch_469  #00000000
        :pswitch_434  #00000001
        :pswitch_3ef  #00000002
        :pswitch_3ef  #00000003
        :pswitch_3b6  #00000004
        :pswitch_36c  #00000005
        :pswitch_334  #00000006
        :pswitch_2eb  #00000007
        :pswitch_2a4  #00000008
        :pswitch_24d  #00000009
        :pswitch_213  #0000000a
        :pswitch_3b6  #0000000b
        :pswitch_1ac  #0000000c
        :pswitch_334  #0000000d
        :pswitch_36c  #0000000e
        :pswitch_16d  #0000000f
        :pswitch_125  #00000010
        :pswitch_af  #00000011
    .end packed-switch
.end method

.method public writeTo(Ljava/lang/Object;Lcom/android/framework/protobuf/Writer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/android/framework/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p2}, Lcom/android/framework/protobuf/Writer;->fieldOrder()Lcom/android/framework/protobuf/Writer$FieldOrder;

    move-result-object v0

    sget-object v1, Lcom/android/framework/protobuf/Writer$FieldOrder;->DESCENDING:Lcom/android/framework/protobuf/Writer$FieldOrder;

    if-ne v0, v1, :cond_c

    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/MessageSchema;->writeFieldsInDescendingOrder(Ljava/lang/Object;Lcom/android/framework/protobuf/Writer;)V

    goto :goto_17

    :cond_c
    iget-boolean v0, p0, Lcom/android/framework/protobuf/MessageSchema;->proto3:Z

    if-eqz v0, :cond_14

    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/MessageSchema;->writeFieldsInAscendingOrderProto3(Ljava/lang/Object;Lcom/android/framework/protobuf/Writer;)V

    goto :goto_17

    :cond_14
    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/MessageSchema;->writeFieldsInAscendingOrderProto2(Ljava/lang/Object;Lcom/android/framework/protobuf/Writer;)V

    :goto_17
    return-void
.end method
