# classes3.dex

.class public final synthetic Landroid/telephony/ims/stub/ImsRegistrationImplBase$1$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1$$ExternalSyntheticLambda6;->f$0:Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1$$ExternalSyntheticLambda6;->f$0:Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;

    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;->lambda$getRegistrationTechnology$0$android-telephony-ims-stub-ImsRegistrationImplBase$1()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
