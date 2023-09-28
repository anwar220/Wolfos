# classes.dex

.class public Landroid/app/servertransaction/StartActivityItem;
.super Landroid/app/servertransaction/ActivityLifecycleItem;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/servertransaction/StartActivityItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "StartActivityItem"


# instance fields
.field private mActivityOptions:Landroid/app/ActivityOptions;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/app/servertransaction/StartActivityItem$1;

    invoke-direct {v0}, Landroid/app/servertransaction/StartActivityItem$1;-><init>()V

    sput-object v0, Landroid/app/servertransaction/StartActivityItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/servertransaction/ActivityLifecycleItem;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Landroid/app/servertransaction/ActivityLifecycleItem;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object v0

    iput-object v0, p0, Landroid/app/servertransaction/StartActivityItem;->mActivityOptions:Landroid/app/ActivityOptions;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/servertransaction/StartActivityItem-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/servertransaction/StartActivityItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static obtain(Landroid/app/ActivityOptions;)Landroid/app/servertransaction/StartActivityItem;
    .registers 3

    const-class v0, Landroid/app/servertransaction/StartActivityItem;

    invoke-static {v0}, Landroid/app/servertransaction/ObjectPool;->obtain(Ljava/lang/Class;)Landroid/app/servertransaction/ObjectPoolItem;

    move-result-object v0

    check-cast v0, Landroid/app/servertransaction/StartActivityItem;

    if-nez v0, :cond_10

    new-instance v1, Landroid/app/servertransaction/StartActivityItem;

    invoke-direct {v1}, Landroid/app/servertransaction/StartActivityItem;-><init>()V

    move-object v0, v1

    :cond_10
    iput-object p0, v0, Landroid/app/servertransaction/StartActivityItem;->mActivityOptions:Landroid/app/ActivityOptions;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_28

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_28

    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/app/servertransaction/StartActivityItem;

    iget-object v3, p0, Landroid/app/servertransaction/StartActivityItem;->mActivityOptions:Landroid/app/ActivityOptions;

    if-nez v3, :cond_1b

    move v3, v0

    goto :goto_1c

    :cond_1b
    move v3, v1

    :goto_1c
    iget-object v4, v2, Landroid/app/servertransaction/StartActivityItem;->mActivityOptions:Landroid/app/ActivityOptions;

    if-nez v4, :cond_22

    move v4, v0

    goto :goto_23

    :cond_22
    move v4, v1

    :goto_23
    if-ne v3, v4, :cond_26

    goto :goto_27

    :cond_26
    move v0, v1

    :goto_27
    return v0

    :cond_28
    :goto_28
    return v1
.end method

.method public execute(Landroid/app/ClientTransactionHandler;Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;)V
    .registers 7

    const-wide/16 v0, 0x40

    const-string/jumbo v2, "startActivityItem"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v2, p0, Landroid/app/servertransaction/StartActivityItem;->mActivityOptions:Landroid/app/ActivityOptions;

    invoke-virtual {p1, p2, p3, v2}, Landroid/app/ClientTransactionHandler;->handleStartActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;Landroid/app/ActivityOptions;)V

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public getTargetState()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/16 v0, 0x11

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/servertransaction/StartActivityItem;->mActivityOptions:Landroid/app/ActivityOptions;

    if-eqz v2, :cond_a

    const/4 v2, 0x1

    goto :goto_b

    :cond_a
    const/4 v2, 0x0

    :goto_b
    add-int/2addr v1, v2

    return v1
.end method

.method public recycle()V
    .registers 2

    invoke-super {p0}, Landroid/app/servertransaction/ActivityLifecycleItem;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/servertransaction/StartActivityItem;->mActivityOptions:Landroid/app/ActivityOptions;

    invoke-static {p0}, Landroid/app/servertransaction/ObjectPool;->recycle(Landroid/app/servertransaction/ObjectPoolItem;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StartActivityItem{options="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/servertransaction/StartActivityItem;->mActivityOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Landroid/app/servertransaction/StartActivityItem;->mActivityOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
