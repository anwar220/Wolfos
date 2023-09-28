# classes2.dex

.class public final synthetic Landroid/view/autofill/AutofillManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/view/autofill/AutofillManager;


# direct methods
.method public synthetic constructor <init>(Landroid/view/autofill/AutofillManager;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/autofill/AutofillManager$$ExternalSyntheticLambda2;->f$0:Landroid/view/autofill/AutofillManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/view/autofill/AutofillManager$$ExternalSyntheticLambda2;->f$0:Landroid/view/autofill/AutofillManager;

    invoke-virtual {v0}, Landroid/view/autofill/AutofillManager;->lambda$onVisibleForAutofill$2$android-view-autofill-AutofillManager()V

    return-void
.end method
