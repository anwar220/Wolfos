# classes4.dex

.class public final enum Lcom/android/internal/widget/LockPatternView$DisplayMode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/LockPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DisplayMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/widget/LockPatternView$DisplayMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/widget/LockPatternView$DisplayMode;

.field public static final enum Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

.field public static final enum Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

.field public static final enum Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    new-instance v0, Lcom/android/internal/widget/LockPatternView$DisplayMode;

    const-string v1, "Correct"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/LockPatternView$DisplayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    new-instance v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;

    const-string v3, "Animate"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/internal/widget/LockPatternView$DisplayMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    new-instance v3, Lcom/android/internal/widget/LockPatternView$DisplayMode;

    const-string v5, "Wrong"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/internal/widget/LockPatternView$DisplayMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/android/internal/widget/LockPatternView$DisplayMode;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/android/internal/widget/LockPatternView$DisplayMode;->$VALUES:[Lcom/android/internal/widget/LockPatternView$DisplayMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/widget/LockPatternView$DisplayMode;
    .registers 2

    const-class v0, Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$DisplayMode;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/widget/LockPatternView$DisplayMode;
    .registers 1

    sget-object v0, Lcom/android/internal/widget/LockPatternView$DisplayMode;->$VALUES:[Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0}, [Lcom/android/internal/widget/LockPatternView$DisplayMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/widget/LockPatternView$DisplayMode;

    return-object v0
.end method