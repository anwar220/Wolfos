# classes4.dex

.class public final synthetic Landroid/widget/Editor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field public final synthetic f$0:Landroid/widget/Editor;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/Editor;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/Editor$$ExternalSyntheticLambda0;->f$0:Landroid/widget/Editor;

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .registers 2

    iget-object v0, p0, Landroid/widget/Editor$$ExternalSyntheticLambda0;->f$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->lambda$startActionModeInternal$0$android-widget-Editor()V

    return-void
.end method
