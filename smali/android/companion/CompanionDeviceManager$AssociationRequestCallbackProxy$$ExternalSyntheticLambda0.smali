# classes.dex

.class public final synthetic Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/companion/CompanionDeviceManager$Callback;


# direct methods
.method public synthetic constructor <init>(Landroid/companion/CompanionDeviceManager$Callback;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy$$ExternalSyntheticLambda0;->f$0:Landroid/companion/CompanionDeviceManager$Callback;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy$$ExternalSyntheticLambda0;->f$0:Landroid/companion/CompanionDeviceManager$Callback;

    check-cast p1, Landroid/content/IntentSender;

    invoke-virtual {v0, p1}, Landroid/companion/CompanionDeviceManager$Callback;->onAssociationPending(Landroid/content/IntentSender;)V

    return-void
.end method