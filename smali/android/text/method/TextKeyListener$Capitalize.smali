# classes3.dex

.class public final enum Landroid/text/method/TextKeyListener$Capitalize;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/method/TextKeyListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Capitalize"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/text/method/TextKeyListener$Capitalize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/text/method/TextKeyListener$Capitalize;

.field public static final enum CHARACTERS:Landroid/text/method/TextKeyListener$Capitalize;

.field public static final enum NONE:Landroid/text/method/TextKeyListener$Capitalize;

.field public static final enum SENTENCES:Landroid/text/method/TextKeyListener$Capitalize;

.field public static final enum WORDS:Landroid/text/method/TextKeyListener$Capitalize;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    new-instance v0, Landroid/text/method/TextKeyListener$Capitalize;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/text/method/TextKeyListener$Capitalize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/text/method/TextKeyListener$Capitalize;->NONE:Landroid/text/method/TextKeyListener$Capitalize;

    new-instance v1, Landroid/text/method/TextKeyListener$Capitalize;

    const-string v3, "SENTENCES"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroid/text/method/TextKeyListener$Capitalize;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroid/text/method/TextKeyListener$Capitalize;->SENTENCES:Landroid/text/method/TextKeyListener$Capitalize;

    new-instance v3, Landroid/text/method/TextKeyListener$Capitalize;

    const-string v5, "WORDS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Landroid/text/method/TextKeyListener$Capitalize;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroid/text/method/TextKeyListener$Capitalize;->WORDS:Landroid/text/method/TextKeyListener$Capitalize;

    new-instance v5, Landroid/text/method/TextKeyListener$Capitalize;

    const-string v7, "CHARACTERS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Landroid/text/method/TextKeyListener$Capitalize;-><init>(Ljava/lang/String;I)V

    sput-object v5, Landroid/text/method/TextKeyListener$Capitalize;->CHARACTERS:Landroid/text/method/TextKeyListener$Capitalize;

    const/4 v7, 0x4

    new-array v7, v7, [Landroid/text/method/TextKeyListener$Capitalize;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Landroid/text/method/TextKeyListener$Capitalize;->$VALUES:[Landroid/text/method/TextKeyListener$Capitalize;

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

.method public static valueOf(Ljava/lang/String;)Landroid/text/method/TextKeyListener$Capitalize;
    .registers 2

    const-class v0, Landroid/text/method/TextKeyListener$Capitalize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/text/method/TextKeyListener$Capitalize;

    return-object v0
.end method

.method public static values()[Landroid/text/method/TextKeyListener$Capitalize;
    .registers 1

    sget-object v0, Landroid/text/method/TextKeyListener$Capitalize;->$VALUES:[Landroid/text/method/TextKeyListener$Capitalize;

    invoke-virtual {v0}, [Landroid/text/method/TextKeyListener$Capitalize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/method/TextKeyListener$Capitalize;

    return-object v0
.end method
