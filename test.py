import torch
from ddpm import unet
import sys

print("-----LAUNCH script test-----")

print("torch.version", torch.__version__)
print("unet", unet)
print("torch.cuda.is_available()", torch.cuda.is_available())
print("torch.cuda.device_count()", torch.cuda.device_count())
print("torch.cuda.current_device()", torch.cuda.current_device())
print("torch.cuda.device(torch.cuda.current_device())", torch.cuda.device(torch.cuda.current_device()))
print("sys", sys.path)

print("-----CLOSE script test-----")