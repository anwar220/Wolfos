# classes4.dex

.class public final synthetic Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda31;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Landroid/view/inputmethod/ExtractedTextRequest;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/view/inputmethod/ExtractedTextRequest;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda31;->f$0:Landroid/view/inputmethod/ExtractedTextRequest;

    iput p2, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda31;->f$1:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda31;->f$0:Landroid/view/inputmethod/ExtractedTextRequest;

    iget v1, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda31;->f$1:I

    check-cast p1, Landroid/view/inputmethod/ExtractedText;

    invoke-static {v0, v1, p1}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->lambda$getExtractedText$15(Landroid/view/inputmethod/ExtractedTextRequest;ILandroid/view/inputmethod/ExtractedText;)[B

    move-result-object p1

    return-object p1
.end method
