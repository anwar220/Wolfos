# classes3.dex

.class public final enum Landroid/service/games/GameSession$LifecycleState;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/games/GameSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LifecycleState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/service/games/GameSession$LifecycleState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/service/games/GameSession$LifecycleState;

.field public static final enum CREATED:Landroid/service/games/GameSession$LifecycleState;

.field public static final enum DESTROYED:Landroid/service/games/GameSession$LifecycleState;

.field public static final enum INITIALIZED:Landroid/service/games/GameSession$LifecycleState;

.field public static final enum TASK_FOCUSED:Landroid/service/games/GameSession$LifecycleState;

.field public static final enum TASK_UNFOCUSED:Landroid/service/games/GameSession$LifecycleState;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    new-instance v0, Landroid/service/games/GameSession$LifecycleState;

    const-string v1, "INITIALIZED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/service/games/GameSession$LifecycleState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/service/games/GameSession$LifecycleState;->INITIALIZED:Landroid/service/games/GameSession$LifecycleState;

    new-instance v1, Landroid/service/games/GameSession$LifecycleState;

    const-string v3, "CREATED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroid/service/games/GameSession$LifecycleState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroid/service/games/GameSession$LifecycleState;->CREATED:Landroid/service/games/GameSession$LifecycleState;

    new-instance v3, Landroid/service/games/GameSession$LifecycleState;

    const-string v5, "TASK_FOCUSED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Landroid/service/games/GameSession$LifecycleState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroid/service/games/GameSession$LifecycleState;->TASK_FOCUSED:Landroid/service/games/GameSession$LifecycleState;

    new-instance v5, Landroid/service/games/GameSession$LifecycleState;

    const-string v7, "TASK_UNFOCUSED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Landroid/service/games/GameSession$LifecycleState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Landroid/service/games/GameSession$LifecycleState;->TASK_UNFOCUSED:Landroid/service/games/GameSession$LifecycleState;

    new-instance v7, Landroid/service/games/GameSession$LifecycleState;

    const-string v9, "DESTROYED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Landroid/service/games/GameSession$LifecycleState;-><init>(Ljava/lang/String;I)V

    sput-object v7, Landroid/service/games/GameSession$LifecycleState;->DESTROYED:Landroid/service/games/GameSession$LifecycleState;

    const/4 v9, 0x5

    new-array v9, v9, [Landroid/service/games/GameSession$LifecycleState;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Landroid/service/games/GameSession$LifecycleState;->$VALUES:[Landroid/service/games/GameSession$LifecycleState;

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

.method public static valueOf(Ljava/lang/String;)Landroid/service/games/GameSession$LifecycleState;
    .registers 2

    const-class v0, Landroid/service/games/GameSession$LifecycleState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/service/games/GameSession$LifecycleState;

    return-object v0
.end method

.method public static values()[Landroid/service/games/GameSession$LifecycleState;
    .registers 1

    sget-object v0, Landroid/service/games/GameSession$LifecycleState;->$VALUES:[Landroid/service/games/GameSession$LifecycleState;

    invoke-virtual {v0}, [Landroid/service/games/GameSession$LifecycleState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/service/games/GameSession$LifecycleState;

    return-object v0
.end method
