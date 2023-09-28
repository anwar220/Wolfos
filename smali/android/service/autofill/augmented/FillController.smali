# classes3.dex

.class public final Landroid/service/autofill/augmented/FillController;
.super Ljava/lang/Object;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mProxy:Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Landroid/service/autofill/augmented/FillController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/service/autofill/augmented/FillController;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/autofill/augmented/FillController;->mProxy:Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;

    return-void
.end method


# virtual methods
.method public autofill(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/view/autofill/AutofillId;",
            "Landroid/view/autofill/AutofillValue;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v0, Landroid/service/autofill/augmented/AugmentedAutofillService;->sDebug:Z

    if-eqz v0, :cond_29

    sget-object v0, Landroid/service/autofill/augmented/FillController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "autofill() with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " values"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    :try_start_29
    iget-object v0, p0, Landroid/service/autofill/augmented/FillController;->mProxy:Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;

    invoke-virtual {v0, p1}, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->autofill(Ljava/util/List;)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_2e} :catch_2f

    goto :goto_33

    :catch_2f
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    :goto_33
    iget-object v0, p0, Landroid/service/autofill/augmented/FillController;->mProxy:Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;

    invoke-virtual {v0}, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->getFillWindow()Landroid/service/autofill/augmented/FillWindow;

    move-result-object v0

    if-eqz v0, :cond_3e

    invoke-virtual {v0}, Landroid/service/autofill/augmented/FillWindow;->destroy()V

    :cond_3e
    return-void
.end method
