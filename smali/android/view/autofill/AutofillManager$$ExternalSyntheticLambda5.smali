# classes2.dex

.class public final synthetic Landroid/view/autofill/AutofillManager$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/view/autofill/AutofillManager;

.field public final synthetic f$1:Ljava/lang/ref/WeakReference;


# direct methods
.method public synthetic constructor <init>(Landroid/view/autofill/AutofillManager;Ljava/lang/ref/WeakReference;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/autofill/AutofillManager$$ExternalSyntheticLambda5;->f$0:Landroid/view/autofill/AutofillManager;

    iput-object p2, p0, Landroid/view/autofill/AutofillManager$$ExternalSyntheticLambda5;->f$1:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/view/autofill/AutofillManager$$ExternalSyntheticLambda5;->f$0:Landroid/view/autofill/AutofillManager;

    iget-object v1, p0, Landroid/view/autofill/AutofillManager$$ExternalSyntheticLambda5;->f$1:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1}, Landroid/view/autofill/AutofillManager;->lambda$showAutofillDialog$5$android-view-autofill-AutofillManager(Ljava/lang/ref/WeakReference;)V

    return-void
.end method
