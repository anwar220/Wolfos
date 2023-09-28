# classes2.dex

.class public final synthetic Landroid/view/translation/UiTranslationController$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/translation/UiTranslationController$$ExternalSyntheticLambda8;->f$0:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/view/translation/UiTranslationController$$ExternalSyntheticLambda8;->f$0:Landroid/view/View;

    invoke-static {v0}, Landroid/view/translation/UiTranslationController;->lambda$onVirtualViewTranslationCompleted$3(Landroid/view/View;)V

    return-void
.end method
