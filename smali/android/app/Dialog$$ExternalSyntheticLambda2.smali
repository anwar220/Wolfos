# classes.dex

.class public final synthetic Landroid/app/Dialog$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/window/OnBackInvokedCallback;


# instance fields
.field public final synthetic f$0:Landroid/app/Dialog;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Dialog;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/Dialog$$ExternalSyntheticLambda2;->f$0:Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method public final onBackInvoked()V
    .registers 2

    iget-object v0, p0, Landroid/app/Dialog$$ExternalSyntheticLambda2;->f$0:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->onBackPressed()V

    return-void
.end method
