# classes3.dex

.class public final synthetic Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;

.field public final synthetic f$1:[Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;[Landroid/net/Uri;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder$$ExternalSyntheticLambda2;->f$0:Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;

    iput-object p2, p0, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder$$ExternalSyntheticLambda2;->f$1:[Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder$$ExternalSyntheticLambda2;->f$0:Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;

    iget-object v1, p0, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder$$ExternalSyntheticLambda2;->f$1:[Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->lambda$onSubscriberAssociatedUriChanged$4$android-telephony-ims-RegistrationManager$RegistrationCallback$RegistrationBinder([Landroid/net/Uri;)V

    return-void
.end method
