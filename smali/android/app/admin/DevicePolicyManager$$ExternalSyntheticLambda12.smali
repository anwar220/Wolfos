# classes.dex

.class public final synthetic Landroid/app/admin/DevicePolicyManager$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/Executor;

.field public final synthetic f$1:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/admin/DevicePolicyManager$$ExternalSyntheticLambda12;->f$0:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroid/app/admin/DevicePolicyManager$$ExternalSyntheticLambda12;->f$1:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager$$ExternalSyntheticLambda12;->f$0:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$$ExternalSyntheticLambda12;->f$1:Ljava/util/function/Consumer;

    check-cast p1, Ljava/lang/Boolean;

    check-cast p2, Ljava/lang/Throwable;

    invoke-static {v0, v1, p1, p2}, Landroid/app/admin/DevicePolicyManager;->lambda$executeCallback$1(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Ljava/lang/Boolean;Ljava/lang/Throwable;)V

    return-void
.end method