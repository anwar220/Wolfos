# classes4.dex

.class public final synthetic Landroid/window/DisplayAreaOrganizer$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/window/DisplayAreaOrganizer$1;

.field public final synthetic f$1:Landroid/window/DisplayAreaInfo;


# direct methods
.method public synthetic constructor <init>(Landroid/window/DisplayAreaOrganizer$1;Landroid/window/DisplayAreaInfo;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/window/DisplayAreaOrganizer$1$$ExternalSyntheticLambda1;->f$0:Landroid/window/DisplayAreaOrganizer$1;

    iput-object p2, p0, Landroid/window/DisplayAreaOrganizer$1$$ExternalSyntheticLambda1;->f$1:Landroid/window/DisplayAreaInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/window/DisplayAreaOrganizer$1$$ExternalSyntheticLambda1;->f$0:Landroid/window/DisplayAreaOrganizer$1;

    iget-object v1, p0, Landroid/window/DisplayAreaOrganizer$1$$ExternalSyntheticLambda1;->f$1:Landroid/window/DisplayAreaInfo;

    invoke-virtual {v0, v1}, Landroid/window/DisplayAreaOrganizer$1;->lambda$onDisplayAreaInfoChanged$2$android-window-DisplayAreaOrganizer$1(Landroid/window/DisplayAreaInfo;)V

    return-void
.end method