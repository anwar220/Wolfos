# classes.dex

.class public final synthetic Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/BiConsumer;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Landroid/content/AbstractThreadedSyncAdapter;

    check-cast p2, Landroid/content/ISyncAdapterUnsyncableAccountCallback;

    invoke-static {p1, p2}, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->lambda$onUnsyncableAccount$0(Ljava/lang/Object;Landroid/content/ISyncAdapterUnsyncableAccountCallback;)V

    return-void
.end method
