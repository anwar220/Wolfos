# classes2.dex

.class public final synthetic Landroid/hardware/radio/ProgramList$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/hardware/radio/ProgramList$ListCallback;

.field public final synthetic f$1:Landroid/hardware/radio/ProgramSelector$Identifier;


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/radio/ProgramList$ListCallback;Landroid/hardware/radio/ProgramSelector$Identifier;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/radio/ProgramList$1$$ExternalSyntheticLambda1;->f$0:Landroid/hardware/radio/ProgramList$ListCallback;

    iput-object p2, p0, Landroid/hardware/radio/ProgramList$1$$ExternalSyntheticLambda1;->f$1:Landroid/hardware/radio/ProgramSelector$Identifier;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/hardware/radio/ProgramList$1$$ExternalSyntheticLambda1;->f$0:Landroid/hardware/radio/ProgramList$ListCallback;

    iget-object v1, p0, Landroid/hardware/radio/ProgramList$1$$ExternalSyntheticLambda1;->f$1:Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-static {v0, v1}, Landroid/hardware/radio/ProgramList$1;->lambda$onItemChanged$0(Landroid/hardware/radio/ProgramList$ListCallback;Landroid/hardware/radio/ProgramSelector$Identifier;)V

    return-void
.end method
