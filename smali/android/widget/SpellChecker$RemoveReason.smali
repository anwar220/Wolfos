# classes4.dex

.class final enum Landroid/widget/SpellChecker$RemoveReason;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SpellChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "RemoveReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/widget/SpellChecker$RemoveReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/widget/SpellChecker$RemoveReason;

.field public static final enum OBSOLETE:Landroid/widget/SpellChecker$RemoveReason;

.field public static final enum REPLACE:Landroid/widget/SpellChecker$RemoveReason;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Landroid/widget/SpellChecker$RemoveReason;

    const-string v1, "REPLACE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/widget/SpellChecker$RemoveReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/widget/SpellChecker$RemoveReason;->REPLACE:Landroid/widget/SpellChecker$RemoveReason;

    new-instance v1, Landroid/widget/SpellChecker$RemoveReason;

    const-string v3, "OBSOLETE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroid/widget/SpellChecker$RemoveReason;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroid/widget/SpellChecker$RemoveReason;->OBSOLETE:Landroid/widget/SpellChecker$RemoveReason;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/widget/SpellChecker$RemoveReason;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Landroid/widget/SpellChecker$RemoveReason;->$VALUES:[Landroid/widget/SpellChecker$RemoveReason;

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

.method public static valueOf(Ljava/lang/String;)Landroid/widget/SpellChecker$RemoveReason;
    .registers 2

    const-class v0, Landroid/widget/SpellChecker$RemoveReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/widget/SpellChecker$RemoveReason;

    return-object v0
.end method

.method public static values()[Landroid/widget/SpellChecker$RemoveReason;
    .registers 1

    sget-object v0, Landroid/widget/SpellChecker$RemoveReason;->$VALUES:[Landroid/widget/SpellChecker$RemoveReason;

    invoke-virtual {v0}, [Landroid/widget/SpellChecker$RemoveReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/widget/SpellChecker$RemoveReason;

    return-object v0
.end method
