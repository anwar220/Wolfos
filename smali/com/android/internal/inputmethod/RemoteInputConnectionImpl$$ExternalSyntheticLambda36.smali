# classes4.dex

.class public final synthetic Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda36;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

.field public final synthetic f$1:Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

.field public final synthetic f$2:Landroid/view/inputmethod/CorrectionInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/CorrectionInfo;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda36;->f$0:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    iput-object p2, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda36;->f$1:Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    iput-object p3, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda36;->f$2:Landroid/view/inputmethod/CorrectionInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda36;->f$0:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    iget-object v1, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda36;->f$1:Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    iget-object v2, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda36;->f$2:Landroid/view/inputmethod/CorrectionInfo;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->lambda$commitCorrection$19$com-android-internal-inputmethod-RemoteInputConnectionImpl(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/CorrectionInfo;)V

    return-void
.end method
