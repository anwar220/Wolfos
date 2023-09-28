# classes4.dex

.class public final enum Lcom/android/framework/protobuf/FieldType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/framework/protobuf/FieldType$Collection;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/framework/protobuf/FieldType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/framework/protobuf/FieldType;

.field public static final enum BOOL:Lcom/android/framework/protobuf/FieldType;

.field public static final enum BOOL_LIST:Lcom/android/framework/protobuf/FieldType;

.field public static final enum BOOL_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

.field public static final enum BYTES:Lcom/android/framework/protobuf/FieldType;

.field public static final enum BYTES_LIST:Lcom/android/framework/protobuf/FieldType;

.field public static final enum DOUBLE:Lcom/android/framework/protobuf/FieldType;

.field public static final enum DOUBLE_LIST:Lcom/android/framework/protobuf/FieldType;

.field public static final enum DOUBLE_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

.field private static final EMPTY_TYPES:[Ljava/lang/reflect/Type;

.field public static final enum ENUM:Lcom/android/framework/protobuf/FieldType;

.field public static final enum ENUM_LIST:Lcom/android/framework/protobuf/FieldType;

.field public static final enum ENUM_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

.field public static final enum FIXED32:Lcom/android/framework/protobuf/FieldType;

.field public static final enum FIXED32_LIST:Lcom/android/framework/protobuf/FieldType;

.field public static final enum FIXED32_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

.field public static final enum FIXED64:Lcom/android/framework/protobuf/FieldType;

.field public static final enum FIXED64_LIST:Lcom/android/framework/protobuf/FieldType;

.field public static final enum FIXED64_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

.field public static final enum FLOAT:Lcom/android/framework/protobuf/FieldType;

.field public static final enum FLOAT_LIST:Lcom/android/framework/protobuf/FieldType;

.field public static final enum FLOAT_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

.field public static final enum GROUP:Lcom/android/framework/protobuf/FieldType;

.field public static final enum GROUP_LIST:Lcom/android/framework/protobuf/FieldType;

.field public static final enum INT32:Lcom/android/framework/protobuf/FieldType;

.field public static final enum INT32_LIST:Lcom/android/framework/protobuf/FieldType;

.field public static final enum INT32_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

.field public static final enum INT64:Lcom/android/framework/protobuf/FieldType;

.field public static final enum INT64_LIST:Lcom/android/framework/protobuf/FieldType;

.field public static final enum INT64_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

.field public static final enum MAP:Lcom/android/framework/protobuf/FieldType;

.field public static final enum MESSAGE:Lcom/android/framework/protobuf/FieldType;

.field public static final enum MESSAGE_LIST:Lcom/android/framework/protobuf/FieldType;

.field public static final enum SFIXED32:Lcom/android/framework/protobuf/FieldType;

.field public static final enum SFIXED32_LIST:Lcom/android/framework/protobuf/FieldType;

.field public static final enum SFIXED32_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

.field public static final enum SFIXED64:Lcom/android/framework/protobuf/FieldType;

.field public static final enum SFIXED64_LIST:Lcom/android/framework/protobuf/FieldType;

.field public static final enum SFIXED64_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

.field public static final enum SINT32:Lcom/android/framework/protobuf/FieldType;

.field public static final enum SINT32_LIST:Lcom/android/framework/protobuf/FieldType;

.field public static final enum SINT32_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

.field public static final enum SINT64:Lcom/android/framework/protobuf/FieldType;

.field public static final enum SINT64_LIST:Lcom/android/framework/protobuf/FieldType;

.field public static final enum SINT64_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

.field public static final enum STRING:Lcom/android/framework/protobuf/FieldType;

.field public static final enum STRING_LIST:Lcom/android/framework/protobuf/FieldType;

.field public static final enum UINT32:Lcom/android/framework/protobuf/FieldType;

.field public static final enum UINT32_LIST:Lcom/android/framework/protobuf/FieldType;

.field public static final enum UINT32_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

.field public static final enum UINT64:Lcom/android/framework/protobuf/FieldType;

.field public static final enum UINT64_LIST:Lcom/android/framework/protobuf/FieldType;

.field public static final enum UINT64_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

.field private static final VALUES:[Lcom/android/framework/protobuf/FieldType;


# instance fields
.field private final collection:Lcom/android/framework/protobuf/FieldType$Collection;

.field private final elementType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final id:I

.field private final javaType:Lcom/android/framework/protobuf/JavaType;

.field private final primitiveScalar:Z


# direct methods
.method static constructor <clinit>()V
    .registers 62

    new-instance v6, Lcom/android/framework/protobuf/FieldType;

    sget-object v4, Lcom/android/framework/protobuf/FieldType$Collection;->SCALAR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v5, Lcom/android/framework/protobuf/JavaType;->DOUBLE:Lcom/android/framework/protobuf/JavaType;

    const-string v1, "DOUBLE"

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v6, Lcom/android/framework/protobuf/FieldType;->DOUBLE:Lcom/android/framework/protobuf/FieldType;

    new-instance v0, Lcom/android/framework/protobuf/FieldType;

    sget-object v11, Lcom/android/framework/protobuf/FieldType$Collection;->SCALAR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v12, Lcom/android/framework/protobuf/JavaType;->FLOAT:Lcom/android/framework/protobuf/JavaType;

    const-string v8, "FLOAT"

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v0, Lcom/android/framework/protobuf/FieldType;->FLOAT:Lcom/android/framework/protobuf/FieldType;

    new-instance v1, Lcom/android/framework/protobuf/FieldType;

    sget-object v17, Lcom/android/framework/protobuf/FieldType$Collection;->SCALAR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v18, Lcom/android/framework/protobuf/JavaType;->LONG:Lcom/android/framework/protobuf/JavaType;

    const-string v14, "INT64"

    const/4 v15, 0x2

    const/16 v16, 0x2

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v1, Lcom/android/framework/protobuf/FieldType;->INT64:Lcom/android/framework/protobuf/FieldType;

    new-instance v2, Lcom/android/framework/protobuf/FieldType;

    sget-object v11, Lcom/android/framework/protobuf/FieldType$Collection;->SCALAR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v12, Lcom/android/framework/protobuf/JavaType;->LONG:Lcom/android/framework/protobuf/JavaType;

    const-string v8, "UINT64"

    const/4 v9, 0x3

    const/4 v10, 0x3

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v2, Lcom/android/framework/protobuf/FieldType;->UINT64:Lcom/android/framework/protobuf/FieldType;

    new-instance v3, Lcom/android/framework/protobuf/FieldType;

    sget-object v17, Lcom/android/framework/protobuf/FieldType$Collection;->SCALAR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v18, Lcom/android/framework/protobuf/JavaType;->INT:Lcom/android/framework/protobuf/JavaType;

    const-string v14, "INT32"

    const/4 v15, 0x4

    const/16 v16, 0x4

    move-object v13, v3

    invoke-direct/range {v13 .. v18}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v3, Lcom/android/framework/protobuf/FieldType;->INT32:Lcom/android/framework/protobuf/FieldType;

    new-instance v4, Lcom/android/framework/protobuf/FieldType;

    sget-object v11, Lcom/android/framework/protobuf/FieldType$Collection;->SCALAR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v12, Lcom/android/framework/protobuf/JavaType;->LONG:Lcom/android/framework/protobuf/JavaType;

    const-string v8, "FIXED64"

    const/4 v9, 0x5

    const/4 v10, 0x5

    move-object v7, v4

    invoke-direct/range {v7 .. v12}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v4, Lcom/android/framework/protobuf/FieldType;->FIXED64:Lcom/android/framework/protobuf/FieldType;

    new-instance v5, Lcom/android/framework/protobuf/FieldType;

    sget-object v17, Lcom/android/framework/protobuf/FieldType$Collection;->SCALAR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v18, Lcom/android/framework/protobuf/JavaType;->INT:Lcom/android/framework/protobuf/JavaType;

    const-string v14, "FIXED32"

    const/4 v15, 0x6

    const/16 v16, 0x6

    move-object v13, v5

    invoke-direct/range {v13 .. v18}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v5, Lcom/android/framework/protobuf/FieldType;->FIXED32:Lcom/android/framework/protobuf/FieldType;

    new-instance v13, Lcom/android/framework/protobuf/FieldType;

    sget-object v11, Lcom/android/framework/protobuf/FieldType$Collection;->SCALAR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v12, Lcom/android/framework/protobuf/JavaType;->BOOLEAN:Lcom/android/framework/protobuf/JavaType;

    const-string v8, "BOOL"

    const/4 v9, 0x7

    const/4 v10, 0x7

    move-object v7, v13

    invoke-direct/range {v7 .. v12}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v13, Lcom/android/framework/protobuf/FieldType;->BOOL:Lcom/android/framework/protobuf/FieldType;

    new-instance v7, Lcom/android/framework/protobuf/FieldType;

    sget-object v18, Lcom/android/framework/protobuf/FieldType$Collection;->SCALAR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v19, Lcom/android/framework/protobuf/JavaType;->STRING:Lcom/android/framework/protobuf/JavaType;

    const-string v15, "STRING"

    const/16 v16, 0x8

    const/16 v17, 0x8

    move-object v14, v7

    invoke-direct/range {v14 .. v19}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v7, Lcom/android/framework/protobuf/FieldType;->STRING:Lcom/android/framework/protobuf/FieldType;

    new-instance v8, Lcom/android/framework/protobuf/FieldType;

    sget-object v24, Lcom/android/framework/protobuf/FieldType$Collection;->SCALAR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v25, Lcom/android/framework/protobuf/JavaType;->MESSAGE:Lcom/android/framework/protobuf/JavaType;

    const-string v21, "MESSAGE"

    const/16 v22, 0x9

    const/16 v23, 0x9

    move-object/from16 v20, v8

    invoke-direct/range {v20 .. v25}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v8, Lcom/android/framework/protobuf/FieldType;->MESSAGE:Lcom/android/framework/protobuf/FieldType;

    new-instance v9, Lcom/android/framework/protobuf/FieldType;

    sget-object v18, Lcom/android/framework/protobuf/FieldType$Collection;->SCALAR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v19, Lcom/android/framework/protobuf/JavaType;->BYTE_STRING:Lcom/android/framework/protobuf/JavaType;

    const-string v15, "BYTES"

    const/16 v16, 0xa

    const/16 v17, 0xa

    move-object v14, v9

    invoke-direct/range {v14 .. v19}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v9, Lcom/android/framework/protobuf/FieldType;->BYTES:Lcom/android/framework/protobuf/FieldType;

    new-instance v10, Lcom/android/framework/protobuf/FieldType;

    sget-object v24, Lcom/android/framework/protobuf/FieldType$Collection;->SCALAR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v25, Lcom/android/framework/protobuf/JavaType;->INT:Lcom/android/framework/protobuf/JavaType;

    const-string v21, "UINT32"

    const/16 v22, 0xb

    const/16 v23, 0xb

    move-object/from16 v20, v10

    invoke-direct/range {v20 .. v25}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v10, Lcom/android/framework/protobuf/FieldType;->UINT32:Lcom/android/framework/protobuf/FieldType;

    new-instance v11, Lcom/android/framework/protobuf/FieldType;

    sget-object v18, Lcom/android/framework/protobuf/FieldType$Collection;->SCALAR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v19, Lcom/android/framework/protobuf/JavaType;->ENUM:Lcom/android/framework/protobuf/JavaType;

    const-string v15, "ENUM"

    const/16 v16, 0xc

    const/16 v17, 0xc

    move-object v14, v11

    invoke-direct/range {v14 .. v19}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v11, Lcom/android/framework/protobuf/FieldType;->ENUM:Lcom/android/framework/protobuf/FieldType;

    new-instance v12, Lcom/android/framework/protobuf/FieldType;

    sget-object v24, Lcom/android/framework/protobuf/FieldType$Collection;->SCALAR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v25, Lcom/android/framework/protobuf/JavaType;->INT:Lcom/android/framework/protobuf/JavaType;

    const-string v21, "SFIXED32"

    const/16 v22, 0xd

    const/16 v23, 0xd

    move-object/from16 v20, v12

    invoke-direct/range {v20 .. v25}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v12, Lcom/android/framework/protobuf/FieldType;->SFIXED32:Lcom/android/framework/protobuf/FieldType;

    new-instance v20, Lcom/android/framework/protobuf/FieldType;

    sget-object v18, Lcom/android/framework/protobuf/FieldType$Collection;->SCALAR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v19, Lcom/android/framework/protobuf/JavaType;->LONG:Lcom/android/framework/protobuf/JavaType;

    const-string v15, "SFIXED64"

    const/16 v16, 0xe

    const/16 v17, 0xe

    move-object/from16 v14, v20

    invoke-direct/range {v14 .. v19}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v20, Lcom/android/framework/protobuf/FieldType;->SFIXED64:Lcom/android/framework/protobuf/FieldType;

    new-instance v14, Lcom/android/framework/protobuf/FieldType;

    sget-object v25, Lcom/android/framework/protobuf/FieldType$Collection;->SCALAR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v26, Lcom/android/framework/protobuf/JavaType;->INT:Lcom/android/framework/protobuf/JavaType;

    const-string v22, "SINT32"

    const/16 v23, 0xf

    const/16 v24, 0xf

    move-object/from16 v21, v14

    invoke-direct/range {v21 .. v26}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v14, Lcom/android/framework/protobuf/FieldType;->SINT32:Lcom/android/framework/protobuf/FieldType;

    new-instance v15, Lcom/android/framework/protobuf/FieldType;

    sget-object v31, Lcom/android/framework/protobuf/FieldType$Collection;->SCALAR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v32, Lcom/android/framework/protobuf/JavaType;->LONG:Lcom/android/framework/protobuf/JavaType;

    const-string v28, "SINT64"

    const/16 v29, 0x10

    const/16 v30, 0x10

    move-object/from16 v27, v15

    invoke-direct/range {v27 .. v32}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v15, Lcom/android/framework/protobuf/FieldType;->SINT64:Lcom/android/framework/protobuf/FieldType;

    new-instance v16, Lcom/android/framework/protobuf/FieldType;

    sget-object v25, Lcom/android/framework/protobuf/FieldType$Collection;->SCALAR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v26, Lcom/android/framework/protobuf/JavaType;->MESSAGE:Lcom/android/framework/protobuf/JavaType;

    const-string v22, "GROUP"

    const/16 v23, 0x11

    const/16 v24, 0x11

    move-object/from16 v21, v16

    invoke-direct/range {v21 .. v26}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v16, Lcom/android/framework/protobuf/FieldType;->GROUP:Lcom/android/framework/protobuf/FieldType;

    new-instance v17, Lcom/android/framework/protobuf/FieldType;

    sget-object v31, Lcom/android/framework/protobuf/FieldType$Collection;->VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v32, Lcom/android/framework/protobuf/JavaType;->DOUBLE:Lcom/android/framework/protobuf/JavaType;

    const-string v28, "DOUBLE_LIST"

    const/16 v29, 0x12

    const/16 v30, 0x12

    move-object/from16 v27, v17

    invoke-direct/range {v27 .. v32}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v17, Lcom/android/framework/protobuf/FieldType;->DOUBLE_LIST:Lcom/android/framework/protobuf/FieldType;

    new-instance v18, Lcom/android/framework/protobuf/FieldType;

    sget-object v25, Lcom/android/framework/protobuf/FieldType$Collection;->VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v26, Lcom/android/framework/protobuf/JavaType;->FLOAT:Lcom/android/framework/protobuf/JavaType;

    const-string v22, "FLOAT_LIST"

    const/16 v23, 0x13

    const/16 v24, 0x13

    move-object/from16 v21, v18

    invoke-direct/range {v21 .. v26}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v18, Lcom/android/framework/protobuf/FieldType;->FLOAT_LIST:Lcom/android/framework/protobuf/FieldType;

    new-instance v19, Lcom/android/framework/protobuf/FieldType;

    sget-object v31, Lcom/android/framework/protobuf/FieldType$Collection;->VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v32, Lcom/android/framework/protobuf/JavaType;->LONG:Lcom/android/framework/protobuf/JavaType;

    const-string v28, "INT64_LIST"

    const/16 v29, 0x14

    const/16 v30, 0x14

    move-object/from16 v27, v19

    invoke-direct/range {v27 .. v32}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v19, Lcom/android/framework/protobuf/FieldType;->INT64_LIST:Lcom/android/framework/protobuf/FieldType;

    new-instance v27, Lcom/android/framework/protobuf/FieldType;

    sget-object v25, Lcom/android/framework/protobuf/FieldType$Collection;->VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v26, Lcom/android/framework/protobuf/JavaType;->LONG:Lcom/android/framework/protobuf/JavaType;

    const-string v22, "UINT64_LIST"

    const/16 v23, 0x15

    const/16 v24, 0x15

    move-object/from16 v21, v27

    invoke-direct/range {v21 .. v26}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v27, Lcom/android/framework/protobuf/FieldType;->UINT64_LIST:Lcom/android/framework/protobuf/FieldType;

    new-instance v21, Lcom/android/framework/protobuf/FieldType;

    sget-object v32, Lcom/android/framework/protobuf/FieldType$Collection;->VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v33, Lcom/android/framework/protobuf/JavaType;->INT:Lcom/android/framework/protobuf/JavaType;

    const-string v29, "INT32_LIST"

    const/16 v30, 0x16

    const/16 v31, 0x16

    move-object/from16 v28, v21

    invoke-direct/range {v28 .. v33}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v21, Lcom/android/framework/protobuf/FieldType;->INT32_LIST:Lcom/android/framework/protobuf/FieldType;

    new-instance v22, Lcom/android/framework/protobuf/FieldType;

    sget-object v38, Lcom/android/framework/protobuf/FieldType$Collection;->VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v39, Lcom/android/framework/protobuf/JavaType;->LONG:Lcom/android/framework/protobuf/JavaType;

    const-string v35, "FIXED64_LIST"

    const/16 v36, 0x17

    const/16 v37, 0x17

    move-object/from16 v34, v22

    invoke-direct/range {v34 .. v39}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v22, Lcom/android/framework/protobuf/FieldType;->FIXED64_LIST:Lcom/android/framework/protobuf/FieldType;

    new-instance v23, Lcom/android/framework/protobuf/FieldType;

    sget-object v32, Lcom/android/framework/protobuf/FieldType$Collection;->VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v33, Lcom/android/framework/protobuf/JavaType;->INT:Lcom/android/framework/protobuf/JavaType;

    const-string v29, "FIXED32_LIST"

    const/16 v30, 0x18

    const/16 v31, 0x18

    move-object/from16 v28, v23

    invoke-direct/range {v28 .. v33}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v23, Lcom/android/framework/protobuf/FieldType;->FIXED32_LIST:Lcom/android/framework/protobuf/FieldType;

    new-instance v24, Lcom/android/framework/protobuf/FieldType;

    sget-object v38, Lcom/android/framework/protobuf/FieldType$Collection;->VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v39, Lcom/android/framework/protobuf/JavaType;->BOOLEAN:Lcom/android/framework/protobuf/JavaType;

    const-string v35, "BOOL_LIST"

    const/16 v36, 0x19

    const/16 v37, 0x19

    move-object/from16 v34, v24

    invoke-direct/range {v34 .. v39}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v24, Lcom/android/framework/protobuf/FieldType;->BOOL_LIST:Lcom/android/framework/protobuf/FieldType;

    new-instance v25, Lcom/android/framework/protobuf/FieldType;

    sget-object v32, Lcom/android/framework/protobuf/FieldType$Collection;->VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v33, Lcom/android/framework/protobuf/JavaType;->STRING:Lcom/android/framework/protobuf/JavaType;

    const-string v29, "STRING_LIST"

    const/16 v30, 0x1a

    const/16 v31, 0x1a

    move-object/from16 v28, v25

    invoke-direct/range {v28 .. v33}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v25, Lcom/android/framework/protobuf/FieldType;->STRING_LIST:Lcom/android/framework/protobuf/FieldType;

    new-instance v26, Lcom/android/framework/protobuf/FieldType;

    sget-object v38, Lcom/android/framework/protobuf/FieldType$Collection;->VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v39, Lcom/android/framework/protobuf/JavaType;->MESSAGE:Lcom/android/framework/protobuf/JavaType;

    const-string v35, "MESSAGE_LIST"

    const/16 v36, 0x1b

    const/16 v37, 0x1b

    move-object/from16 v34, v26

    invoke-direct/range {v34 .. v39}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v26, Lcom/android/framework/protobuf/FieldType;->MESSAGE_LIST:Lcom/android/framework/protobuf/FieldType;

    new-instance v34, Lcom/android/framework/protobuf/FieldType;

    sget-object v32, Lcom/android/framework/protobuf/FieldType$Collection;->VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v33, Lcom/android/framework/protobuf/JavaType;->BYTE_STRING:Lcom/android/framework/protobuf/JavaType;

    const-string v29, "BYTES_LIST"

    const/16 v30, 0x1c

    const/16 v31, 0x1c

    move-object/from16 v28, v34

    invoke-direct/range {v28 .. v33}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v34, Lcom/android/framework/protobuf/FieldType;->BYTES_LIST:Lcom/android/framework/protobuf/FieldType;

    new-instance v28, Lcom/android/framework/protobuf/FieldType;

    sget-object v39, Lcom/android/framework/protobuf/FieldType$Collection;->VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v40, Lcom/android/framework/protobuf/JavaType;->INT:Lcom/android/framework/protobuf/JavaType;

    const-string v36, "UINT32_LIST"

    const/16 v37, 0x1d

    const/16 v38, 0x1d

    move-object/from16 v35, v28

    invoke-direct/range {v35 .. v40}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v28, Lcom/android/framework/protobuf/FieldType;->UINT32_LIST:Lcom/android/framework/protobuf/FieldType;

    new-instance v29, Lcom/android/framework/protobuf/FieldType;

    sget-object v45, Lcom/android/framework/protobuf/FieldType$Collection;->VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v46, Lcom/android/framework/protobuf/JavaType;->ENUM:Lcom/android/framework/protobuf/JavaType;

    const-string v42, "ENUM_LIST"

    const/16 v43, 0x1e

    const/16 v44, 0x1e

    move-object/from16 v41, v29

    invoke-direct/range {v41 .. v46}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v29, Lcom/android/framework/protobuf/FieldType;->ENUM_LIST:Lcom/android/framework/protobuf/FieldType;

    new-instance v30, Lcom/android/framework/protobuf/FieldType;

    sget-object v39, Lcom/android/framework/protobuf/FieldType$Collection;->VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v40, Lcom/android/framework/protobuf/JavaType;->INT:Lcom/android/framework/protobuf/JavaType;

    const-string v36, "SFIXED32_LIST"

    const/16 v37, 0x1f

    const/16 v38, 0x1f

    move-object/from16 v35, v30

    invoke-direct/range {v35 .. v40}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v30, Lcom/android/framework/protobuf/FieldType;->SFIXED32_LIST:Lcom/android/framework/protobuf/FieldType;

    new-instance v31, Lcom/android/framework/protobuf/FieldType;

    sget-object v45, Lcom/android/framework/protobuf/FieldType$Collection;->VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v46, Lcom/android/framework/protobuf/JavaType;->LONG:Lcom/android/framework/protobuf/JavaType;

    const-string v42, "SFIXED64_LIST"

    const/16 v43, 0x20

    const/16 v44, 0x20

    move-object/from16 v41, v31

    invoke-direct/range {v41 .. v46}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v31, Lcom/android/framework/protobuf/FieldType;->SFIXED64_LIST:Lcom/android/framework/protobuf/FieldType;

    new-instance v32, Lcom/android/framework/protobuf/FieldType;

    sget-object v39, Lcom/android/framework/protobuf/FieldType$Collection;->VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v40, Lcom/android/framework/protobuf/JavaType;->INT:Lcom/android/framework/protobuf/JavaType;

    const-string v36, "SINT32_LIST"

    const/16 v37, 0x21

    const/16 v38, 0x21

    move-object/from16 v35, v32

    invoke-direct/range {v35 .. v40}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v32, Lcom/android/framework/protobuf/FieldType;->SINT32_LIST:Lcom/android/framework/protobuf/FieldType;

    new-instance v33, Lcom/android/framework/protobuf/FieldType;

    sget-object v45, Lcom/android/framework/protobuf/FieldType$Collection;->VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v46, Lcom/android/framework/protobuf/JavaType;->LONG:Lcom/android/framework/protobuf/JavaType;

    const-string v42, "SINT64_LIST"

    const/16 v43, 0x22

    const/16 v44, 0x22

    move-object/from16 v41, v33

    invoke-direct/range {v41 .. v46}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v33, Lcom/android/framework/protobuf/FieldType;->SINT64_LIST:Lcom/android/framework/protobuf/FieldType;

    new-instance v41, Lcom/android/framework/protobuf/FieldType;

    sget-object v39, Lcom/android/framework/protobuf/FieldType$Collection;->PACKED_VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v40, Lcom/android/framework/protobuf/JavaType;->DOUBLE:Lcom/android/framework/protobuf/JavaType;

    const-string v36, "DOUBLE_LIST_PACKED"

    const/16 v37, 0x23

    const/16 v38, 0x23

    move-object/from16 v35, v41

    invoke-direct/range {v35 .. v40}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v41, Lcom/android/framework/protobuf/FieldType;->DOUBLE_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

    new-instance v35, Lcom/android/framework/protobuf/FieldType;

    sget-object v46, Lcom/android/framework/protobuf/FieldType$Collection;->PACKED_VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v47, Lcom/android/framework/protobuf/JavaType;->FLOAT:Lcom/android/framework/protobuf/JavaType;

    const-string v43, "FLOAT_LIST_PACKED"

    const/16 v44, 0x24

    const/16 v45, 0x24

    move-object/from16 v42, v35

    invoke-direct/range {v42 .. v47}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v35, Lcom/android/framework/protobuf/FieldType;->FLOAT_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

    new-instance v36, Lcom/android/framework/protobuf/FieldType;

    sget-object v52, Lcom/android/framework/protobuf/FieldType$Collection;->PACKED_VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v53, Lcom/android/framework/protobuf/JavaType;->LONG:Lcom/android/framework/protobuf/JavaType;

    const-string v49, "INT64_LIST_PACKED"

    const/16 v50, 0x25

    const/16 v51, 0x25

    move-object/from16 v48, v36

    invoke-direct/range {v48 .. v53}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v36, Lcom/android/framework/protobuf/FieldType;->INT64_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

    new-instance v37, Lcom/android/framework/protobuf/FieldType;

    sget-object v46, Lcom/android/framework/protobuf/FieldType$Collection;->PACKED_VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v47, Lcom/android/framework/protobuf/JavaType;->LONG:Lcom/android/framework/protobuf/JavaType;

    const-string v43, "UINT64_LIST_PACKED"

    const/16 v44, 0x26

    const/16 v45, 0x26

    move-object/from16 v42, v37

    invoke-direct/range {v42 .. v47}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v37, Lcom/android/framework/protobuf/FieldType;->UINT64_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

    new-instance v38, Lcom/android/framework/protobuf/FieldType;

    sget-object v52, Lcom/android/framework/protobuf/FieldType$Collection;->PACKED_VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v53, Lcom/android/framework/protobuf/JavaType;->INT:Lcom/android/framework/protobuf/JavaType;

    const-string v49, "INT32_LIST_PACKED"

    const/16 v50, 0x27

    const/16 v51, 0x27

    move-object/from16 v48, v38

    invoke-direct/range {v48 .. v53}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v38, Lcom/android/framework/protobuf/FieldType;->INT32_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

    new-instance v39, Lcom/android/framework/protobuf/FieldType;

    sget-object v46, Lcom/android/framework/protobuf/FieldType$Collection;->PACKED_VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v47, Lcom/android/framework/protobuf/JavaType;->LONG:Lcom/android/framework/protobuf/JavaType;

    const-string v43, "FIXED64_LIST_PACKED"

    const/16 v44, 0x28

    const/16 v45, 0x28

    move-object/from16 v42, v39

    invoke-direct/range {v42 .. v47}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v39, Lcom/android/framework/protobuf/FieldType;->FIXED64_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

    new-instance v40, Lcom/android/framework/protobuf/FieldType;

    sget-object v52, Lcom/android/framework/protobuf/FieldType$Collection;->PACKED_VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v53, Lcom/android/framework/protobuf/JavaType;->INT:Lcom/android/framework/protobuf/JavaType;

    const-string v49, "FIXED32_LIST_PACKED"

    const/16 v50, 0x29

    const/16 v51, 0x29

    move-object/from16 v48, v40

    invoke-direct/range {v48 .. v53}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v40, Lcom/android/framework/protobuf/FieldType;->FIXED32_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

    new-instance v48, Lcom/android/framework/protobuf/FieldType;

    sget-object v46, Lcom/android/framework/protobuf/FieldType$Collection;->PACKED_VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v47, Lcom/android/framework/protobuf/JavaType;->BOOLEAN:Lcom/android/framework/protobuf/JavaType;

    const-string v43, "BOOL_LIST_PACKED"

    const/16 v44, 0x2a

    const/16 v45, 0x2a

    move-object/from16 v42, v48

    invoke-direct/range {v42 .. v47}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v48, Lcom/android/framework/protobuf/FieldType;->BOOL_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

    new-instance v42, Lcom/android/framework/protobuf/FieldType;

    sget-object v53, Lcom/android/framework/protobuf/FieldType$Collection;->PACKED_VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v54, Lcom/android/framework/protobuf/JavaType;->INT:Lcom/android/framework/protobuf/JavaType;

    const-string v50, "UINT32_LIST_PACKED"

    const/16 v51, 0x2b

    const/16 v52, 0x2b

    move-object/from16 v49, v42

    invoke-direct/range {v49 .. v54}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v42, Lcom/android/framework/protobuf/FieldType;->UINT32_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

    new-instance v43, Lcom/android/framework/protobuf/FieldType;

    sget-object v59, Lcom/android/framework/protobuf/FieldType$Collection;->PACKED_VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v60, Lcom/android/framework/protobuf/JavaType;->ENUM:Lcom/android/framework/protobuf/JavaType;

    const-string v56, "ENUM_LIST_PACKED"

    const/16 v57, 0x2c

    const/16 v58, 0x2c

    move-object/from16 v55, v43

    invoke-direct/range {v55 .. v60}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v43, Lcom/android/framework/protobuf/FieldType;->ENUM_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

    new-instance v44, Lcom/android/framework/protobuf/FieldType;

    sget-object v53, Lcom/android/framework/protobuf/FieldType$Collection;->PACKED_VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v54, Lcom/android/framework/protobuf/JavaType;->INT:Lcom/android/framework/protobuf/JavaType;

    const-string v50, "SFIXED32_LIST_PACKED"

    const/16 v51, 0x2d

    const/16 v52, 0x2d

    move-object/from16 v49, v44

    invoke-direct/range {v49 .. v54}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v44, Lcom/android/framework/protobuf/FieldType;->SFIXED32_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

    new-instance v45, Lcom/android/framework/protobuf/FieldType;

    sget-object v59, Lcom/android/framework/protobuf/FieldType$Collection;->PACKED_VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v60, Lcom/android/framework/protobuf/JavaType;->LONG:Lcom/android/framework/protobuf/JavaType;

    const-string v56, "SFIXED64_LIST_PACKED"

    const/16 v57, 0x2e

    const/16 v58, 0x2e

    move-object/from16 v55, v45

    invoke-direct/range {v55 .. v60}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v45, Lcom/android/framework/protobuf/FieldType;->SFIXED64_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

    new-instance v46, Lcom/android/framework/protobuf/FieldType;

    sget-object v53, Lcom/android/framework/protobuf/FieldType$Collection;->PACKED_VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v54, Lcom/android/framework/protobuf/JavaType;->INT:Lcom/android/framework/protobuf/JavaType;

    const-string v50, "SINT32_LIST_PACKED"

    const/16 v51, 0x2f

    const/16 v52, 0x2f

    move-object/from16 v49, v46

    invoke-direct/range {v49 .. v54}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v46, Lcom/android/framework/protobuf/FieldType;->SINT32_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

    new-instance v47, Lcom/android/framework/protobuf/FieldType;

    sget-object v59, Lcom/android/framework/protobuf/FieldType$Collection;->PACKED_VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v60, Lcom/android/framework/protobuf/JavaType;->LONG:Lcom/android/framework/protobuf/JavaType;

    const-string v56, "SINT64_LIST_PACKED"

    const/16 v57, 0x30

    const/16 v58, 0x30

    move-object/from16 v55, v47

    invoke-direct/range {v55 .. v60}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v47, Lcom/android/framework/protobuf/FieldType;->SINT64_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

    new-instance v55, Lcom/android/framework/protobuf/FieldType;

    sget-object v53, Lcom/android/framework/protobuf/FieldType$Collection;->VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v54, Lcom/android/framework/protobuf/JavaType;->MESSAGE:Lcom/android/framework/protobuf/JavaType;

    const-string v50, "GROUP_LIST"

    const/16 v51, 0x31

    const/16 v52, 0x31

    move-object/from16 v49, v55

    invoke-direct/range {v49 .. v54}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v55, Lcom/android/framework/protobuf/FieldType;->GROUP_LIST:Lcom/android/framework/protobuf/FieldType;

    new-instance v49, Lcom/android/framework/protobuf/FieldType;

    sget-object v60, Lcom/android/framework/protobuf/FieldType$Collection;->MAP:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v61, Lcom/android/framework/protobuf/JavaType;->VOID:Lcom/android/framework/protobuf/JavaType;

    const-string v57, "MAP"

    const/16 v58, 0x32

    const/16 v59, 0x32

    move-object/from16 v56, v49

    invoke-direct/range {v56 .. v61}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v49, Lcom/android/framework/protobuf/FieldType;->MAP:Lcom/android/framework/protobuf/FieldType;

    move-object/from16 v50, v15

    const/16 v15, 0x33

    new-array v15, v15, [Lcom/android/framework/protobuf/FieldType;

    move-object/from16 v51, v14

    const/4 v14, 0x0

    aput-object v6, v15, v14

    const/4 v6, 0x1

    aput-object v0, v15, v6

    const/4 v0, 0x2

    aput-object v1, v15, v0

    const/4 v0, 0x3

    aput-object v2, v15, v0

    const/4 v0, 0x4

    aput-object v3, v15, v0

    const/4 v0, 0x5

    aput-object v4, v15, v0

    const/4 v0, 0x6

    aput-object v5, v15, v0

    const/4 v0, 0x7

    aput-object v13, v15, v0

    const/16 v0, 0x8

    aput-object v7, v15, v0

    const/16 v0, 0x9

    aput-object v8, v15, v0

    const/16 v0, 0xa

    aput-object v9, v15, v0

    const/16 v0, 0xb

    aput-object v10, v15, v0

    const/16 v0, 0xc

    aput-object v11, v15, v0

    const/16 v0, 0xd

    aput-object v12, v15, v0

    const/16 v0, 0xe

    aput-object v20, v15, v0

    const/16 v0, 0xf

    aput-object v51, v15, v0

    const/16 v0, 0x10

    aput-object v50, v15, v0

    const/16 v0, 0x11

    aput-object v16, v15, v0

    const/16 v0, 0x12

    aput-object v17, v15, v0

    const/16 v0, 0x13

    aput-object v18, v15, v0

    const/16 v0, 0x14

    aput-object v19, v15, v0

    const/16 v0, 0x15

    aput-object v27, v15, v0

    const/16 v0, 0x16

    aput-object v21, v15, v0

    const/16 v0, 0x17

    aput-object v22, v15, v0

    const/16 v0, 0x18

    aput-object v23, v15, v0

    const/16 v0, 0x19

    aput-object v24, v15, v0

    const/16 v0, 0x1a

    aput-object v25, v15, v0

    const/16 v0, 0x1b

    aput-object v26, v15, v0

    const/16 v0, 0x1c

    aput-object v34, v15, v0

    const/16 v0, 0x1d

    aput-object v28, v15, v0

    const/16 v0, 0x1e

    aput-object v29, v15, v0

    const/16 v0, 0x1f

    aput-object v30, v15, v0

    const/16 v0, 0x20

    aput-object v31, v15, v0

    const/16 v0, 0x21

    aput-object v32, v15, v0

    const/16 v0, 0x22

    aput-object v33, v15, v0

    const/16 v0, 0x23

    aput-object v41, v15, v0

    const/16 v0, 0x24

    aput-object v35, v15, v0

    const/16 v0, 0x25

    aput-object v36, v15, v0

    const/16 v0, 0x26

    aput-object v37, v15, v0

    const/16 v0, 0x27

    aput-object v38, v15, v0

    const/16 v0, 0x28

    aput-object v39, v15, v0

    const/16 v0, 0x29

    aput-object v40, v15, v0

    const/16 v0, 0x2a

    aput-object v48, v15, v0

    const/16 v0, 0x2b

    aput-object v42, v15, v0

    const/16 v0, 0x2c

    aput-object v43, v15, v0

    const/16 v0, 0x2d

    aput-object v44, v15, v0

    const/16 v0, 0x2e

    aput-object v45, v15, v0

    const/16 v0, 0x2f

    aput-object v46, v15, v0

    const/16 v0, 0x30

    aput-object v47, v15, v0

    const/16 v0, 0x31

    aput-object v55, v15, v0

    const/16 v0, 0x32

    aput-object v49, v15, v0

    sput-object v15, Lcom/android/framework/protobuf/FieldType;->$VALUES:[Lcom/android/framework/protobuf/FieldType;

    new-array v0, v14, [Ljava/lang/reflect/Type;

    sput-object v0, Lcom/android/framework/protobuf/FieldType;->EMPTY_TYPES:[Ljava/lang/reflect/Type;

    invoke-static {}, Lcom/android/framework/protobuf/FieldType;->values()[Lcom/android/framework/protobuf/FieldType;

    move-result-object v0

    array-length v1, v0

    new-array v1, v1, [Lcom/android/framework/protobuf/FieldType;

    sput-object v1, Lcom/android/framework/protobuf/FieldType;->VALUES:[Lcom/android/framework/protobuf/FieldType;

    array-length v1, v0

    :goto_48d
    if-ge v14, v1, :cond_49a

    aget-object v2, v0, v14

    sget-object v3, Lcom/android/framework/protobuf/FieldType;->VALUES:[Lcom/android/framework/protobuf/FieldType;

    iget v4, v2, Lcom/android/framework/protobuf/FieldType;->id:I

    aput-object v2, v3, v4

    add-int/lit8 v14, v14, 0x1

    goto :goto_48d

    :cond_49a
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/framework/protobuf/FieldType$Collection;",
            "Lcom/android/framework/protobuf/JavaType;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/framework/protobuf/FieldType;->id:I

    iput-object p4, p0, Lcom/android/framework/protobuf/FieldType;->collection:Lcom/android/framework/protobuf/FieldType$Collection;

    iput-object p5, p0, Lcom/android/framework/protobuf/FieldType;->javaType:Lcom/android/framework/protobuf/JavaType;

    sget-object p1, Lcom/android/framework/protobuf/FieldType$1;->$SwitchMap$com$google$protobuf$FieldType$Collection:[I

    invoke-virtual {p4}, Lcom/android/framework/protobuf/FieldType$Collection;->ordinal()I

    move-result p2

    aget p1, p1, p2

    packed-switch p1, :pswitch_data_3c

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/framework/protobuf/FieldType;->elementType:Ljava/lang/Class;

    goto :goto_26

    :pswitch_18  #0x2
    invoke-virtual {p5}, Lcom/android/framework/protobuf/JavaType;->getBoxedType()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/android/framework/protobuf/FieldType;->elementType:Ljava/lang/Class;

    goto :goto_26

    :pswitch_1f  #0x1
    invoke-virtual {p5}, Lcom/android/framework/protobuf/JavaType;->getBoxedType()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/android/framework/protobuf/FieldType;->elementType:Ljava/lang/Class;

    nop

    :goto_26
    const/4 p1, 0x0

    sget-object p2, Lcom/android/framework/protobuf/FieldType$Collection;->SCALAR:Lcom/android/framework/protobuf/FieldType$Collection;

    if-ne p4, p2, :cond_38

    sget-object p2, Lcom/android/framework/protobuf/FieldType$1;->$SwitchMap$com$google$protobuf$JavaType:[I

    invoke-virtual {p5}, Lcom/android/framework/protobuf/JavaType;->ordinal()I

    move-result v0

    aget p2, p2, v0

    packed-switch p2, :pswitch_data_44

    const/4 p1, 0x1

    nop

    :cond_38
    :pswitch_38  #0x1, 0x2, 0x3
    iput-boolean p1, p0, Lcom/android/framework/protobuf/FieldType;->primitiveScalar:Z

    return-void

    nop

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_1f  #00000001
        :pswitch_18  #00000002
    .end packed-switch

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_38  #00000001
        :pswitch_38  #00000002
        :pswitch_38  #00000003
    .end packed-switch
.end method

.method public static forId(I)Lcom/android/framework/protobuf/FieldType;
    .registers 3

    if-ltz p0, :cond_b

    sget-object v0, Lcom/android/framework/protobuf/FieldType;->VALUES:[Lcom/android/framework/protobuf/FieldType;

    array-length v1, v0

    if-lt p0, v1, :cond_8

    goto :goto_b

    :cond_8
    aget-object v0, v0, p0

    return-object v0

    :cond_b
    :goto_b
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getGenericSuperList(Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_23

    aget-object v3, v0, v2

    instance-of v4, v3, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_20

    move-object v4, v3

    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v4}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    const-class v6, Ljava/util/List;

    invoke-virtual {v6, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_20

    return-object v3

    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_23
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_3d

    move-object v2, v1

    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    const-class v4, Ljava/util/List;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_3d

    return-object v1

    :cond_3d
    const/4 v2, 0x0

    return-object v2
.end method

.method private static getListParameter(Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    :goto_0
    const-class v0, Ljava/util/List;

    const/4 v1, 0x0

    if-eq p0, v0, :cond_86

    invoke-static {p0}, Lcom/android/framework/protobuf/FieldType;->getGenericSuperList(Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    instance-of v2, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_68

    move-object v1, v0

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    const/4 v3, 0x0

    :goto_15
    array-length v4, v2

    if-ge v3, v4, :cond_5f

    aget-object v4, v2, v3

    instance-of v5, v4, Ljava/lang/reflect/TypeVariable;

    if-eqz v5, :cond_5c

    invoke-virtual {p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v5

    array-length v6, p1

    array-length v7, v5

    if-ne v6, v7, :cond_54

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_28
    array-length v8, v5

    if-ge v7, v8, :cond_38

    aget-object v8, v5, v7

    if-ne v4, v8, :cond_35

    aget-object v8, p1, v7

    aput-object v8, v2, v3

    const/4 v6, 0x1

    goto :goto_38

    :cond_35
    add-int/lit8 v7, v7, 0x1

    goto :goto_28

    :cond_38
    :goto_38
    if-eqz v6, :cond_3b

    goto :goto_5c

    :cond_3b
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to find replacement for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_54
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Type array mismatch"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_5c
    :goto_5c
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :cond_5f
    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    move-object p1, v2

    move-object p0, v3

    goto :goto_0

    :cond_68
    sget-object p1, Lcom/android/framework/protobuf/FieldType;->EMPTY_TYPES:[Ljava/lang/reflect/Type;

    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v2

    array-length v3, v2

    :goto_6f
    if-ge v1, v3, :cond_80

    aget-object v4, v2, v1

    const-class v5, Ljava/util/List;

    invoke-virtual {v5, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_7d

    move-object p0, v4

    goto :goto_0

    :cond_7d
    add-int/lit8 v1, v1, 0x1

    goto :goto_6f

    :cond_80
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto/16 :goto_0

    :cond_86
    array-length v0, p1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_8d

    aget-object v0, p1, v1

    return-object v0

    :cond_8d
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unable to identify parameter type for List<T>"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private isValidForList(Ljava/lang/reflect/Field;)Z
    .registers 8

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/android/framework/protobuf/FieldType;->javaType:Lcom/android/framework/protobuf/JavaType;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/JavaType;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_12

    const/4 v1, 0x0

    return v1

    :cond_12
    sget-object v1, Lcom/android/framework/protobuf/FieldType;->EMPTY_TYPES:[Ljava/lang/reflect/Type;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v2

    instance-of v3, v2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_26

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    :cond_26
    invoke-static {v0, v1}, Lcom/android/framework/protobuf/FieldType;->getListParameter(Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v3

    instance-of v4, v3, Ljava/lang/Class;

    if-nez v4, :cond_30

    const/4 v4, 0x1

    return v4

    :cond_30
    iget-object v4, p0, Lcom/android/framework/protobuf/FieldType;->elementType:Ljava/lang/Class;

    move-object v5, v3

    check-cast v5, Ljava/lang/Class;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    return v4
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/framework/protobuf/FieldType;
    .registers 2

    const-class v0, Lcom/android/framework/protobuf/FieldType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/FieldType;

    return-object v0
.end method

.method public static values()[Lcom/android/framework/protobuf/FieldType;
    .registers 1

    sget-object v0, Lcom/android/framework/protobuf/FieldType;->$VALUES:[Lcom/android/framework/protobuf/FieldType;

    invoke-virtual {v0}, [Lcom/android/framework/protobuf/FieldType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/framework/protobuf/FieldType;

    return-object v0
.end method


# virtual methods
.method public getJavaType()Lcom/android/framework/protobuf/JavaType;
    .registers 2

    iget-object v0, p0, Lcom/android/framework/protobuf/FieldType;->javaType:Lcom/android/framework/protobuf/JavaType;

    return-object v0
.end method

.method public id()I
    .registers 2

    iget v0, p0, Lcom/android/framework/protobuf/FieldType;->id:I

    return v0
.end method

.method public isList()Z
    .registers 2

    iget-object v0, p0, Lcom/android/framework/protobuf/FieldType;->collection:Lcom/android/framework/protobuf/FieldType$Collection;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/FieldType$Collection;->isList()Z

    move-result v0

    return v0
.end method

.method public isMap()Z
    .registers 3

    iget-object v0, p0, Lcom/android/framework/protobuf/FieldType;->collection:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v1, Lcom/android/framework/protobuf/FieldType$Collection;->MAP:Lcom/android/framework/protobuf/FieldType$Collection;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isPacked()Z
    .registers 3

    sget-object v0, Lcom/android/framework/protobuf/FieldType$Collection;->PACKED_VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;

    iget-object v1, p0, Lcom/android/framework/protobuf/FieldType;->collection:Lcom/android/framework/protobuf/FieldType$Collection;

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/FieldType$Collection;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isPrimitiveScalar()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/framework/protobuf/FieldType;->primitiveScalar:Z

    return v0
.end method

.method public isScalar()Z
    .registers 3

    iget-object v0, p0, Lcom/android/framework/protobuf/FieldType;->collection:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v1, Lcom/android/framework/protobuf/FieldType$Collection;->SCALAR:Lcom/android/framework/protobuf/FieldType$Collection;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isValidForField(Ljava/lang/reflect/Field;)Z
    .registers 4

    sget-object v0, Lcom/android/framework/protobuf/FieldType$Collection;->VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;

    iget-object v1, p0, Lcom/android/framework/protobuf/FieldType;->collection:Lcom/android/framework/protobuf/FieldType$Collection;

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/FieldType$Collection;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/FieldType;->isValidForList(Ljava/lang/reflect/Field;)Z

    move-result v0

    return v0

    :cond_f
    iget-object v0, p0, Lcom/android/framework/protobuf/FieldType;->javaType:Lcom/android/framework/protobuf/JavaType;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/JavaType;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method
