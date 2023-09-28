# classes3.dex

.class public final synthetic Landroid/os/RecoverySystem$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/RecoverySystem$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/os/RecoverySystem$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/RecoverySystem;->lambda$factoryreset$0(Landroid/content/Context;)V

    return-void
.end method
