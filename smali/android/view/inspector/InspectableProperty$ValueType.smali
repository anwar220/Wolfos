# classes2.dex

.class public final enum Landroid/view/inspector/InspectableProperty$ValueType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inspector/InspectableProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ValueType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/view/inspector/InspectableProperty$ValueType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/view/inspector/InspectableProperty$ValueType;

.field public static final enum COLOR:Landroid/view/inspector/InspectableProperty$ValueType;

.field public static final enum GRAVITY:Landroid/view/inspector/InspectableProperty$ValueType;

.field public static final enum INFERRED:Landroid/view/inspector/InspectableProperty$ValueType;

.field public static final enum INT_ENUM:Landroid/view/inspector/InspectableProperty$ValueType;

.field public static final enum INT_FLAG:Landroid/view/inspector/InspectableProperty$ValueType;

.field public static final enum NONE:Landroid/view/inspector/InspectableProperty$ValueType;

.field public static final enum RESOURCE_ID:Landroid/view/inspector/InspectableProperty$ValueType;


# direct methods
.method static constructor <clinit>()V
    .registers 15

    new-instance v0, Landroid/view/inspector/InspectableProperty$ValueType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/inspector/InspectableProperty$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/view/inspector/InspectableProperty$ValueType;->NONE:Landroid/view/inspector/InspectableProperty$ValueType;

    new-instance v1, Landroid/view/inspector/InspectableProperty$ValueType;

    const-string v3, "INFERRED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroid/view/inspector/InspectableProperty$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroid/view/inspector/InspectableProperty$ValueType;->INFERRED:Landroid/view/inspector/InspectableProperty$ValueType;

    new-instance v3, Landroid/view/inspector/InspectableProperty$ValueType;

    const-string v5, "INT_ENUM"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Landroid/view/inspector/InspectableProperty$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroid/view/inspector/InspectableProperty$ValueType;->INT_ENUM:Landroid/view/inspector/InspectableProperty$ValueType;

    new-instance v5, Landroid/view/inspector/InspectableProperty$ValueType;

    const-string v7, "INT_FLAG"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Landroid/view/inspector/InspectableProperty$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Landroid/view/inspector/InspectableProperty$ValueType;->INT_FLAG:Landroid/view/inspector/InspectableProperty$ValueType;

    new-instance v7, Landroid/view/inspector/InspectableProperty$ValueType;

    const-string v9, "COLOR"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Landroid/view/inspector/InspectableProperty$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Landroid/view/inspector/InspectableProperty$ValueType;->COLOR:Landroid/view/inspector/InspectableProperty$ValueType;

    new-instance v9, Landroid/view/inspector/InspectableProperty$ValueType;

    const-string v11, "GRAVITY"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Landroid/view/inspector/InspectableProperty$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Landroid/view/inspector/InspectableProperty$ValueType;->GRAVITY:Landroid/view/inspector/InspectableProperty$ValueType;

    new-instance v11, Landroid/view/inspector/InspectableProperty$ValueType;

    const-string v13, "RESOURCE_ID"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Landroid/view/inspector/InspectableProperty$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Landroid/view/inspector/InspectableProperty$ValueType;->RESOURCE_ID:Landroid/view/inspector/InspectableProperty$ValueType;

    const/4 v13, 0x7

    new-array v13, v13, [Landroid/view/inspector/InspectableProperty$ValueType;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Landroid/view/inspector/InspectableProperty$ValueType;->$VALUES:[Landroid/view/inspector/InspectableProperty$ValueType;

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

.method public static valueOf(Ljava/lang/String;)Landroid/view/inspector/InspectableProperty$ValueType;
    .registers 2

    const-class v0, Landroid/view/inspector/InspectableProperty$ValueType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/view/inspector/InspectableProperty$ValueType;

    return-object v0
.end method

.method public static values()[Landroid/view/inspector/InspectableProperty$ValueType;
    .registers 1

    sget-object v0, Landroid/view/inspector/InspectableProperty$ValueType;->$VALUES:[Landroid/view/inspector/InspectableProperty$ValueType;

    invoke-virtual {v0}, [Landroid/view/inspector/InspectableProperty$ValueType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/inspector/InspectableProperty$ValueType;

    return-object v0
.end method
