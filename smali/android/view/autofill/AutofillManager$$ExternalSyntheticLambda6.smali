# classes2.dex

.class public final synthetic Landroid/view/autofill/AutofillManager$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/view/autofill/AutofillManager;

.field public final synthetic f$1:Ljava/lang/ref/WeakReference;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Landroid/view/autofill/AutofillManager;Ljava/lang/ref/WeakReference;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/autofill/AutofillManager$$ExternalSyntheticLambda6;->f$0:Landroid/view/autofill/AutofillManager;

    iput-object p2, p0, Landroid/view/autofill/AutofillManager$$ExternalSyntheticLambda6;->f$1:Ljava/lang/ref/WeakReference;

    iput p3, p0, Landroid/view/autofill/AutofillManager$$ExternalSyntheticLambda6;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Landroid/view/autofill/AutofillManager$$ExternalSyntheticLambda6;->f$0:Landroid/view/autofill/AutofillManager;

    iget-object v1, p0, Landroid/view/autofill/AutofillManager$$ExternalSyntheticLambda6;->f$1:Ljava/lang/ref/WeakReference;

    iget v2, p0, Landroid/view/autofill/AutofillManager$$ExternalSyntheticLambda6;->f$2:I

    invoke-virtual {v0, v1, v2}, Landroid/view/autofill/AutofillManager;->lambda$showAutofillDialog$6$android-view-autofill-AutofillManager(Ljava/lang/ref/WeakReference;I)V

    return-void
.end method
