# classes.dex

.class public final synthetic Landroid/content/pm/ConstrainDisplayApisConfig$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final synthetic f$0:Landroid/content/pm/ConstrainDisplayApisConfig;


# direct methods
.method public synthetic constructor <init>(Landroid/content/pm/ConstrainDisplayApisConfig;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/pm/ConstrainDisplayApisConfig$$ExternalSyntheticLambda0;->f$0:Landroid/content/pm/ConstrainDisplayApisConfig;

    return-void
.end method


# virtual methods
.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .registers 3

    iget-object v0, p0, Landroid/content/pm/ConstrainDisplayApisConfig$$ExternalSyntheticLambda0;->f$0:Landroid/content/pm/ConstrainDisplayApisConfig;

    invoke-virtual {v0, p1}, Landroid/content/pm/ConstrainDisplayApisConfig;->lambda$new$0$android-content-pm-ConstrainDisplayApisConfig(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method
