# classes2.dex

.class public final synthetic Landroid/view/autofill/AutofillManager$AugmentedAutofillManagerClient$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/view/autofill/AutofillManager;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/view/autofill/AutofillId;

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:Landroid/graphics/Rect;

.field public final synthetic f$6:Landroid/view/autofill/IAutofillWindowPresenter;


# direct methods
.method public synthetic constructor <init>(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;IILandroid/graphics/Rect;Landroid/view/autofill/IAutofillWindowPresenter;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/autofill/AutofillManager$AugmentedAutofillManagerClient$$ExternalSyntheticLambda3;->f$0:Landroid/view/autofill/AutofillManager;

    iput p2, p0, Landroid/view/autofill/AutofillManager$AugmentedAutofillManagerClient$$ExternalSyntheticLambda3;->f$1:I

    iput-object p3, p0, Landroid/view/autofill/AutofillManager$AugmentedAutofillManagerClient$$ExternalSyntheticLambda3;->f$2:Landroid/view/autofill/AutofillId;

    iput p4, p0, Landroid/view/autofill/AutofillManager$AugmentedAutofillManagerClient$$ExternalSyntheticLambda3;->f$3:I

    iput p5, p0, Landroid/view/autofill/AutofillManager$AugmentedAutofillManagerClient$$ExternalSyntheticLambda3;->f$4:I

    iput-object p6, p0, Landroid/view/autofill/AutofillManager$AugmentedAutofillManagerClient$$ExternalSyntheticLambda3;->f$5:Landroid/graphics/Rect;

    iput-object p7, p0, Landroid/view/autofill/AutofillManager$AugmentedAutofillManagerClient$$ExternalSyntheticLambda3;->f$6:Landroid/view/autofill/IAutofillWindowPresenter;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    iget-object v0, p0, Landroid/view/autofill/AutofillManager$AugmentedAutofillManagerClient$$ExternalSyntheticLambda3;->f$0:Landroid/view/autofill/AutofillManager;

    iget v1, p0, Landroid/view/autofill/AutofillManager$AugmentedAutofillManagerClient$$ExternalSyntheticLambda3;->f$1:I

    iget-object v2, p0, Landroid/view/autofill/AutofillManager$AugmentedAutofillManagerClient$$ExternalSyntheticLambda3;->f$2:Landroid/view/autofill/AutofillId;

    iget v3, p0, Landroid/view/autofill/AutofillManager$AugmentedAutofillManagerClient$$ExternalSyntheticLambda3;->f$3:I

    iget v4, p0, Landroid/view/autofill/AutofillManager$AugmentedAutofillManagerClient$$ExternalSyntheticLambda3;->f$4:I

    iget-object v5, p0, Landroid/view/autofill/AutofillManager$AugmentedAutofillManagerClient$$ExternalSyntheticLambda3;->f$5:Landroid/graphics/Rect;

    iget-object v6, p0, Landroid/view/autofill/AutofillManager$AugmentedAutofillManagerClient$$ExternalSyntheticLambda3;->f$6:Landroid/view/autofill/IAutofillWindowPresenter;

    invoke-static/range {v0 .. v6}, Landroid/view/autofill/AutofillManager$AugmentedAutofillManagerClient;->lambda$requestShowFillUi$1(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;IILandroid/graphics/Rect;Landroid/view/autofill/IAutofillWindowPresenter;)V

    return-void
.end method
