# classes.dex

.class public final synthetic Landroid/app/AppOpsManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/app/AppOpsManager$OnOpNotedCallback;

.field public final synthetic f$1:Landroid/app/AsyncNotedAppOp;


# direct methods
.method public synthetic constructor <init>(Landroid/app/AppOpsManager$OnOpNotedCallback;Landroid/app/AsyncNotedAppOp;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/AppOpsManager$$ExternalSyntheticLambda2;->f$0:Landroid/app/AppOpsManager$OnOpNotedCallback;

    iput-object p2, p0, Landroid/app/AppOpsManager$$ExternalSyntheticLambda2;->f$1:Landroid/app/AsyncNotedAppOp;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/app/AppOpsManager$$ExternalSyntheticLambda2;->f$0:Landroid/app/AppOpsManager$OnOpNotedCallback;

    iget-object v1, p0, Landroid/app/AppOpsManager$$ExternalSyntheticLambda2;->f$1:Landroid/app/AsyncNotedAppOp;

    invoke-static {v0, v1}, Landroid/app/AppOpsManager;->lambda$setOnOpNotedCallback$5(Landroid/app/AppOpsManager$OnOpNotedCallback;Landroid/app/AsyncNotedAppOp;)V

    return-void
.end method
