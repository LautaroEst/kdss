from datasets import load_dataset
import sys
import os


def main():
    data_dir = sys.argv[1]
    dataset = sys.argv[2]
    data = load_dataset("glue",dataset)
    data.save_to_disk(os.path.join(data_dir,"glue",dataset))




if __name__ == "__main__":
    main()
