# classes.dex

.class public final synthetic Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListenerProxy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListenerProxy;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListenerProxy;Ljava/util/List;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListenerProxy$$ExternalSyntheticLambda0;->f$0:Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListenerProxy;

    iput-object p2, p0, Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListenerProxy$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListenerProxy$$ExternalSyntheticLambda0;->f$0:Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListenerProxy;

    iget-object v1, p0, Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListenerProxy$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    invoke-virtual {v0, v1}, Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListenerProxy;->lambda$onAssociationsChanged$0$android-companion-CompanionDeviceManager$OnAssociationsChangedListenerProxy(Ljava/util/List;)V

    return-void
.end method
