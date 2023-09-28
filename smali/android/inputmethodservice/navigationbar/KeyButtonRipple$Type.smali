# classes2.dex

.class public final enum Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/navigationbar/KeyButtonRipple;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;

.field public static final enum OVAL:Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;

.field public static final enum ROUNDED_RECT:Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;

    const-string v1, "OVAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;->OVAL:Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;

    new-instance v1, Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;

    const-string v3, "ROUNDED_RECT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;->ROUNDED_RECT:Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;->$VALUES:[Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;

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

.method public static valueOf(Ljava/lang/String;)Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;
    .registers 2

    const-class v0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;

    return-object v0
.end method

.method public static values()[Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;
    .registers 1

    sget-object v0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;->$VALUES:[Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;

    invoke-virtual {v0}, [Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;

    return-object v0
.end method
