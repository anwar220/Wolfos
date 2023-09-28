# classes3.dex

.class Landroid/speech/SpeechRecognizer$InternalSupportCallback;
.super Landroid/speech/IRecognitionSupportCallback$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/SpeechRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalSupportCallback"
.end annotation


# instance fields
.field private final mCallback:Landroid/speech/RecognitionSupportCallback;

.field private final mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method private constructor <init>(Ljava/util/concurrent/Executor;Landroid/speech/RecognitionSupportCallback;)V
    .registers 3

    invoke-direct {p0}, Landroid/speech/IRecognitionSupportCallback$Stub;-><init>()V

    iput-object p1, p0, Landroid/speech/SpeechRecognizer$InternalSupportCallback;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroid/speech/SpeechRecognizer$InternalSupportCallback;->mCallback:Landroid/speech/RecognitionSupportCallback;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/concurrent/Executor;Landroid/speech/RecognitionSupportCallback;Landroid/speech/SpeechRecognizer$InternalSupportCallback-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/speech/SpeechRecognizer$InternalSupportCallback;-><init>(Ljava/util/concurrent/Executor;Landroid/speech/RecognitionSupportCallback;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$onError$1$android-speech-SpeechRecognizer$InternalSupportCallback(I)V
    .registers 3

    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalSupportCallback;->mCallback:Landroid/speech/RecognitionSupportCallback;

    invoke-interface {v0, p1}, Landroid/speech/RecognitionSupportCallback;->onError(I)V

    return-void
.end method

.method synthetic lambda$onSupportResult$0$android-speech-SpeechRecognizer$InternalSupportCallback(Landroid/speech/RecognitionSupport;)V
    .registers 3

    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalSupportCallback;->mCallback:Landroid/speech/RecognitionSupportCallback;

    invoke-interface {v0, p1}, Landroid/speech/RecognitionSupportCallback;->onSupportResult(Landroid/speech/RecognitionSupport;)V

    return-void
.end method

.method public onError(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalSupportCallback;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/speech/SpeechRecognizer$InternalSupportCallback$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/speech/SpeechRecognizer$InternalSupportCallback$$ExternalSyntheticLambda1;-><init>(Landroid/speech/SpeechRecognizer$InternalSupportCallback;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSupportResult(Landroid/speech/RecognitionSupport;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalSupportCallback;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/speech/SpeechRecognizer$InternalSupportCallback$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/speech/SpeechRecognizer$InternalSupportCallback$$ExternalSyntheticLambda0;-><init>(Landroid/speech/SpeechRecognizer$InternalSupportCallback;Landroid/speech/RecognitionSupport;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
