# classes2.dex

.class public final enum Landroid/net/LocalSocketAddress$Namespace;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/LocalSocketAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Namespace"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/net/LocalSocketAddress$Namespace;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/net/LocalSocketAddress$Namespace;

.field public static final enum ABSTRACT:Landroid/net/LocalSocketAddress$Namespace;

.field public static final enum FILESYSTEM:Landroid/net/LocalSocketAddress$Namespace;

.field public static final enum RESERVED:Landroid/net/LocalSocketAddress$Namespace;


# instance fields
.field private id:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    new-instance v0, Landroid/net/LocalSocketAddress$Namespace;

    const-string v1, "ABSTRACT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/net/LocalSocketAddress$Namespace;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/net/LocalSocketAddress$Namespace;->ABSTRACT:Landroid/net/LocalSocketAddress$Namespace;

    new-instance v1, Landroid/net/LocalSocketAddress$Namespace;

    const-string v3, "RESERVED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Landroid/net/LocalSocketAddress$Namespace;-><init>(Ljava/lang/String;II)V

    sput-object v1, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    new-instance v3, Landroid/net/LocalSocketAddress$Namespace;

    const-string v5, "FILESYSTEM"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Landroid/net/LocalSocketAddress$Namespace;-><init>(Ljava/lang/String;II)V

    sput-object v3, Landroid/net/LocalSocketAddress$Namespace;->FILESYSTEM:Landroid/net/LocalSocketAddress$Namespace;

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/net/LocalSocketAddress$Namespace;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Landroid/net/LocalSocketAddress$Namespace;->$VALUES:[Landroid/net/LocalSocketAddress$Namespace;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Landroid/net/LocalSocketAddress$Namespace;->id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/net/LocalSocketAddress$Namespace;
    .registers 2

    const-class v0, Landroid/net/LocalSocketAddress$Namespace;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/net/LocalSocketAddress$Namespace;

    return-object v0
.end method

.method public static values()[Landroid/net/LocalSocketAddress$Namespace;
    .registers 1

    sget-object v0, Landroid/net/LocalSocketAddress$Namespace;->$VALUES:[Landroid/net/LocalSocketAddress$Namespace;

    invoke-virtual {v0}, [Landroid/net/LocalSocketAddress$Namespace;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/LocalSocketAddress$Namespace;

    return-object v0
.end method


# virtual methods
.method getId()I
    .registers 2

    iget v0, p0, Landroid/net/LocalSocketAddress$Namespace;->id:I

    return v0
.end method
