# classes4.dex

.class public final synthetic Landroid/widget/Toast$CallbackBinder$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/widget/Toast$CallbackBinder;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/Toast$CallbackBinder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/Toast$CallbackBinder$$ExternalSyntheticLambda1;->f$0:Landroid/widget/Toast$CallbackBinder;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/widget/Toast$CallbackBinder$$ExternalSyntheticLambda1;->f$0:Landroid/widget/Toast$CallbackBinder;

    invoke-virtual {v0}, Landroid/widget/Toast$CallbackBinder;->lambda$onToastShown$0$android-widget-Toast$CallbackBinder()V

    return-void
.end method
