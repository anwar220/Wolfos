# classes4.dex

.class public final enum Lcom/android/framework/protobuf/Writer$FieldOrder;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/Writer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FieldOrder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/framework/protobuf/Writer$FieldOrder;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/framework/protobuf/Writer$FieldOrder;

.field public static final enum ASCENDING:Lcom/android/framework/protobuf/Writer$FieldOrder;

.field public static final enum DESCENDING:Lcom/android/framework/protobuf/Writer$FieldOrder;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/android/framework/protobuf/Writer$FieldOrder;

    const-string v1, "ASCENDING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/framework/protobuf/Writer$FieldOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/framework/protobuf/Writer$FieldOrder;->ASCENDING:Lcom/android/framework/protobuf/Writer$FieldOrder;

    new-instance v1, Lcom/android/framework/protobuf/Writer$FieldOrder;

    const-string v3, "DESCENDING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/framework/protobuf/Writer$FieldOrder;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/framework/protobuf/Writer$FieldOrder;->DESCENDING:Lcom/android/framework/protobuf/Writer$FieldOrder;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/android/framework/protobuf/Writer$FieldOrder;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/android/framework/protobuf/Writer$FieldOrder;->$VALUES:[Lcom/android/framework/protobuf/Writer$FieldOrder;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/framework/protobuf/Writer$FieldOrder;
    .registers 2

    const-class v0, Lcom/android/framework/protobuf/Writer$FieldOrder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/Writer$FieldOrder;

    return-object v0
.end method

.method public static values()[Lcom/android/framework/protobuf/Writer$FieldOrder;
    .registers 1

    sget-object v0, Lcom/android/framework/protobuf/Writer$FieldOrder;->$VALUES:[Lcom/android/framework/protobuf/Writer$FieldOrder;

    invoke-virtual {v0}, [Lcom/android/framework/protobuf/Writer$FieldOrder;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/framework/protobuf/Writer$FieldOrder;

    return-object v0
.end method
