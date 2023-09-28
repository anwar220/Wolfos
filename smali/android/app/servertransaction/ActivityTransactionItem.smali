# classes.dex

.class public abstract Landroid/app/servertransaction/ActivityTransactionItem;
.super Landroid/app/servertransaction/ClientTransactionItem;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/servertransaction/ClientTransactionItem;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract execute(Landroid/app/ClientTransactionHandler;Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;)V
.end method

.method public final execute(Landroid/app/ClientTransactionHandler;Landroid/os/IBinder;Landroid/app/servertransaction/PendingTransactionActions;)V
    .registers 5

    invoke-virtual {p0, p1, p2}, Landroid/app/servertransaction/ActivityTransactionItem;->getActivityClientRecord(Landroid/app/ClientTransactionHandler;Landroid/os/IBinder;)Landroid/app/ActivityThread$ActivityClientRecord;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Landroid/app/servertransaction/ActivityTransactionItem;->execute(Landroid/app/ClientTransactionHandler;Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;)V

    return-void
.end method

.method getActivityClientRecord(Landroid/app/ClientTransactionHandler;Landroid/os/IBinder;)Landroid/app/ActivityThread$ActivityClientRecord;
    .registers 7

    invoke-virtual {p1, p2}, Landroid/app/ClientTransactionHandler;->getActivityClient(Landroid/os/IBinder;)Landroid/app/ActivityThread$ActivityClientRecord;

    move-result-object v0

    if-eqz v0, :cond_26

    invoke-virtual {p1, p2}, Landroid/app/ClientTransactionHandler;->getActivity(Landroid/os/IBinder;)Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_d

    return-object v0

    :cond_d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity must not be null to execute transaction item: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_26
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity client record must not be null to execute transaction item: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
