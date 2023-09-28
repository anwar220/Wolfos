# classes2.dex

.class Landroid/media/MediaDrm$ListenerArgs;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaDrm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ListenerArgs"
.end annotation


# instance fields
.field private final arg1:I

.field private final arg2:I

.field private final data:[B

.field private final expirationTime:J

.field private final hasNewUsableKey:Z

.field private final keyStatusList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/MediaDrm$KeyStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final sessionId:[B


# direct methods
.method static bridge synthetic -$$Nest$fgetarg1(Landroid/media/MediaDrm$ListenerArgs;)I
    .registers 1

    iget p0, p0, Landroid/media/MediaDrm$ListenerArgs;->arg1:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetarg2(Landroid/media/MediaDrm$ListenerArgs;)I
    .registers 1

    iget p0, p0, Landroid/media/MediaDrm$ListenerArgs;->arg2:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetdata(Landroid/media/MediaDrm$ListenerArgs;)[B
    .registers 1

    iget-object p0, p0, Landroid/media/MediaDrm$ListenerArgs;->data:[B

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetexpirationTime(Landroid/media/MediaDrm$ListenerArgs;)J
    .registers 3

    iget-wide v0, p0, Landroid/media/MediaDrm$ListenerArgs;->expirationTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgethasNewUsableKey(Landroid/media/MediaDrm$ListenerArgs;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/media/MediaDrm$ListenerArgs;->hasNewUsableKey:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetkeyStatusList(Landroid/media/MediaDrm$ListenerArgs;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaDrm$ListenerArgs;->keyStatusList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsessionId(Landroid/media/MediaDrm$ListenerArgs;)[B
    .registers 1

    iget-object p0, p0, Landroid/media/MediaDrm$ListenerArgs;->sessionId:[B

    return-object p0
.end method

.method public constructor <init>(II[B[BJLjava/util/List;Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II[B[BJ",
            "Ljava/util/List<",
            "Landroid/media/MediaDrm$KeyStatus;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/MediaDrm$ListenerArgs;->arg1:I

    iput p2, p0, Landroid/media/MediaDrm$ListenerArgs;->arg2:I

    iput-object p3, p0, Landroid/media/MediaDrm$ListenerArgs;->sessionId:[B

    iput-object p4, p0, Landroid/media/MediaDrm$ListenerArgs;->data:[B

    iput-wide p5, p0, Landroid/media/MediaDrm$ListenerArgs;->expirationTime:J

    iput-object p7, p0, Landroid/media/MediaDrm$ListenerArgs;->keyStatusList:Ljava/util/List;

    iput-boolean p8, p0, Landroid/media/MediaDrm$ListenerArgs;->hasNewUsableKey:Z

    return-void
.end method
