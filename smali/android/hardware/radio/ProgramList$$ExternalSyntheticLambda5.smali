# classes2.dex

.class public final synthetic Landroid/hardware/radio/ProgramList$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/hardware/radio/ProgramList;


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/radio/ProgramList;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/radio/ProgramList$$ExternalSyntheticLambda5;->f$0:Landroid/hardware/radio/ProgramList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Landroid/hardware/radio/ProgramList$$ExternalSyntheticLambda5;->f$0:Landroid/hardware/radio/ProgramList;

    check-cast p1, Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-virtual {v0, p1}, Landroid/hardware/radio/ProgramList;->lambda$apply$2$android-hardware-radio-ProgramList(Landroid/hardware/radio/ProgramSelector$Identifier;)V

    return-void
.end method
