# classes4.dex

.class public final synthetic Landroid/widget/Editor$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/window/OnBackInvokedCallback;


# instance fields
.field public final synthetic f$0:Landroid/widget/Editor;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/Editor;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/Editor$$ExternalSyntheticLambda2;->f$0:Landroid/widget/Editor;

    return-void
.end method


# virtual methods
.method public final onBackInvoked()V
    .registers 2

    iget-object v0, p0, Landroid/widget/Editor$$ExternalSyntheticLambda2;->f$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->stopTextActionMode()V

    return-void
.end method
