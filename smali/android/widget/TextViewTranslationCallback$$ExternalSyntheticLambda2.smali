# classes4.dex

.class public final synthetic Landroid/widget/TextViewTranslationCallback$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/widget/TextViewTranslationCallback;

.field public final synthetic f$1:Ljava/lang/ref/WeakReference;

.field public final synthetic f$2:Landroid/text/method/TransformationMethod;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/TextViewTranslationCallback;Ljava/lang/ref/WeakReference;Landroid/text/method/TransformationMethod;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/TextViewTranslationCallback$$ExternalSyntheticLambda2;->f$0:Landroid/widget/TextViewTranslationCallback;

    iput-object p2, p0, Landroid/widget/TextViewTranslationCallback$$ExternalSyntheticLambda2;->f$1:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Landroid/widget/TextViewTranslationCallback$$ExternalSyntheticLambda2;->f$2:Landroid/text/method/TransformationMethod;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Landroid/widget/TextViewTranslationCallback$$ExternalSyntheticLambda2;->f$0:Landroid/widget/TextViewTranslationCallback;

    iget-object v1, p0, Landroid/widget/TextViewTranslationCallback$$ExternalSyntheticLambda2;->f$1:Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Landroid/widget/TextViewTranslationCallback$$ExternalSyntheticLambda2;->f$2:Landroid/text/method/TransformationMethod;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextViewTranslationCallback;->lambda$onShowTranslation$0$android-widget-TextViewTranslationCallback(Ljava/lang/ref/WeakReference;Landroid/text/method/TransformationMethod;)V

    return-void
.end method
