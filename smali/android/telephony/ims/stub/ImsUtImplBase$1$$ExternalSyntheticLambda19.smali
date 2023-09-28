# classes3.dex

.class public final synthetic Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/telephony/ims/stub/ImsUtImplBase$1;

.field public final synthetic f$1:Lcom/android/ims/internal/IImsUtListener;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/ims/stub/ImsUtImplBase$1;Lcom/android/ims/internal/IImsUtListener;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda19;->f$0:Landroid/telephony/ims/stub/ImsUtImplBase$1;

    iput-object p2, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda19;->f$1:Lcom/android/ims/internal/IImsUtListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda19;->f$0:Landroid/telephony/ims/stub/ImsUtImplBase$1;

    iget-object v1, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda19;->f$1:Lcom/android/ims/internal/IImsUtListener;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->lambda$setListener$16$android-telephony-ims-stub-ImsUtImplBase$1(Lcom/android/ims/internal/IImsUtListener;)V

    return-void
.end method
