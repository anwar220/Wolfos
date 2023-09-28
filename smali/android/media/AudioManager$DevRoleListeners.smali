# classes2.dex

.class Landroid/media/AudioManager$DevRoleListeners;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DevRoleListeners"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mDevRoleListenersLock:Ljava/lang/Object;

.field private mListenerInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioManager$DevRoleListenerInfo<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/media/AudioManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmDevRoleListenersLock(Landroid/media/AudioManager$DevRoleListeners;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/media/AudioManager$DevRoleListeners;->mDevRoleListenersLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmListenerInfos(Landroid/media/AudioManager$DevRoleListeners;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Landroid/media/AudioManager$DevRoleListeners;->mListenerInfos:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmListenerInfos(Landroid/media/AudioManager$DevRoleListeners;Ljava/util/ArrayList;)V
    .registers 2

    iput-object p1, p0, Landroid/media/AudioManager$DevRoleListeners;->mListenerInfos:Ljava/util/ArrayList;

    return-void
.end method

.method static bridge synthetic -$$Nest$mhasDevRoleListener(Landroid/media/AudioManager$DevRoleListeners;Ljava/lang/Object;)Z
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/AudioManager$DevRoleListeners;->hasDevRoleListener(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mremoveDevRoleListener(Landroid/media/AudioManager$DevRoleListeners;Ljava/lang/Object;)Z
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/AudioManager$DevRoleListeners;->removeDevRoleListener(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private constructor <init>(Landroid/media/AudioManager;)V
    .registers 2

    iput-object p1, p0, Landroid/media/AudioManager$DevRoleListeners;->this$0:Landroid/media/AudioManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/AudioManager$DevRoleListeners;->mDevRoleListenersLock:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/AudioManager;Landroid/media/AudioManager$DevRoleListeners-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/AudioManager$DevRoleListeners;-><init>(Landroid/media/AudioManager;)V

    return-void
.end method

.method private getDevRoleListenerInfo(Ljava/lang/Object;)Landroid/media/AudioManager$DevRoleListenerInfo;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroid/media/AudioManager$DevRoleListenerInfo<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/AudioManager$DevRoleListeners;->mListenerInfos:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager$DevRoleListenerInfo;

    iget-object v3, v2, Landroid/media/AudioManager$DevRoleListenerInfo;->mListener:Ljava/lang/Object;

    if-ne v3, p1, :cond_1b

    return-object v2

    :cond_1b
    goto :goto_a

    :cond_1c
    return-object v1
.end method

.method private hasDevRoleListener(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/media/AudioManager$DevRoleListeners;->getDevRoleListenerInfo(Ljava/lang/Object;)Landroid/media/AudioManager$DevRoleListenerInfo;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private removeDevRoleListener(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/media/AudioManager$DevRoleListeners;->getDevRoleListenerInfo(Ljava/lang/Object;)Landroid/media/AudioManager$DevRoleListenerInfo;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v1, p0, Landroid/media/AudioManager$DevRoleListeners;->mListenerInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    return v1

    :cond_d
    const/4 v1, 0x0

    return v1
.end method
