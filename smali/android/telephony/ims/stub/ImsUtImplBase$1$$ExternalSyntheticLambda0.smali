# classes3.dex

.class public final synthetic Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Landroid/telephony/ims/stub/ImsUtImplBase$1;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:I

.field public final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/ims/stub/ImsUtImplBase$1;IILjava/lang/String;II)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda0;->f$0:Landroid/telephony/ims/stub/ImsUtImplBase$1;

    iput p2, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda0;->f$1:I

    iput p3, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda0;->f$2:I

    iput-object p4, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    iput p5, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda0;->f$4:I

    iput p6, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda0;->f$5:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 7

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda0;->f$0:Landroid/telephony/ims/stub/ImsUtImplBase$1;

    iget v1, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda0;->f$1:I

    iget v2, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda0;->f$2:I

    iget-object v3, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    iget v4, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda0;->f$4:I

    iget v5, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda0;->f$5:I

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->lambda$updateCallForward$10$android-telephony-ims-stub-ImsUtImplBase$1(IILjava/lang/String;II)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
