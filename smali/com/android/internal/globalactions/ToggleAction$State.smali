# classes4.dex

.class public final enum Lcom/android/internal/globalactions/ToggleAction$State;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/globalactions/ToggleAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/globalactions/ToggleAction$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/globalactions/ToggleAction$State;

.field public static final enum Off:Lcom/android/internal/globalactions/ToggleAction$State;

.field public static final enum On:Lcom/android/internal/globalactions/ToggleAction$State;

.field public static final enum TurningOff:Lcom/android/internal/globalactions/ToggleAction$State;

.field public static final enum TurningOn:Lcom/android/internal/globalactions/ToggleAction$State;


# instance fields
.field private final inTransition:Z


# direct methods
.method static constructor <clinit>()V
    .registers 9

    new-instance v0, Lcom/android/internal/globalactions/ToggleAction$State;

    const-string v1, "Off"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/internal/globalactions/ToggleAction$State;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/globalactions/ToggleAction$State;->Off:Lcom/android/internal/globalactions/ToggleAction$State;

    new-instance v1, Lcom/android/internal/globalactions/ToggleAction$State;

    const-string v3, "TurningOn"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/android/internal/globalactions/ToggleAction$State;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lcom/android/internal/globalactions/ToggleAction$State;->TurningOn:Lcom/android/internal/globalactions/ToggleAction$State;

    new-instance v3, Lcom/android/internal/globalactions/ToggleAction$State;

    const-string v5, "TurningOff"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lcom/android/internal/globalactions/ToggleAction$State;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lcom/android/internal/globalactions/ToggleAction$State;->TurningOff:Lcom/android/internal/globalactions/ToggleAction$State;

    new-instance v5, Lcom/android/internal/globalactions/ToggleAction$State;

    const-string v7, "On"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v2}, Lcom/android/internal/globalactions/ToggleAction$State;-><init>(Ljava/lang/String;IZ)V

    sput-object v5, Lcom/android/internal/globalactions/ToggleAction$State;->On:Lcom/android/internal/globalactions/ToggleAction$State;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/android/internal/globalactions/ToggleAction$State;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/android/internal/globalactions/ToggleAction$State;->$VALUES:[Lcom/android/internal/globalactions/ToggleAction$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lcom/android/internal/globalactions/ToggleAction$State;->inTransition:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/globalactions/ToggleAction$State;
    .registers 2

    const-class v0, Lcom/android/internal/globalactions/ToggleAction$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/globalactions/ToggleAction$State;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/globalactions/ToggleAction$State;
    .registers 1

    sget-object v0, Lcom/android/internal/globalactions/ToggleAction$State;->$VALUES:[Lcom/android/internal/globalactions/ToggleAction$State;

    invoke-virtual {v0}, [Lcom/android/internal/globalactions/ToggleAction$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/globalactions/ToggleAction$State;

    return-object v0
.end method


# virtual methods
.method public inTransition()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/internal/globalactions/ToggleAction$State;->inTransition:Z

    return v0
.end method
